import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/src/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/failure.dart';
import '../../../data/model/entity/request/login/login_params.dart';
import '../../../data/model/entity/response/login/login_result.dart';
import '../../../data/model/entity/validation/login/login_validation.dart';
import '../../../domain/login/login_usecase.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this.loginUseCase) : super(const LoginState.initial()) {
    on<LoginEvent>(_onLoginEvent);
  }

  final LoginUseCase loginUseCase;

  Future<void> _onLoginEvent(LoginEvent event, Emitter<LoginState> emit) async {
    switch (event) {
      case LoginEventStarted(params: final LoginParams params):
        await _onLogin(emit, params: params);
    }
  }

  Future<void> _onLogin(Emitter<LoginState> emit,
      {required LoginParams params}) async {
    emit(const LoginState.loading());

    final Either<Failure<LoginValidation>, LoginResult> resultState =
        await loginUseCase(
      params: params,
    );

    resultState.fold(
      (Failure<LoginValidation> failure) =>
          emit(LoginState.loginError(failure)),
      (_) => emit(const LoginState.loaded()),
    );
  }
}
