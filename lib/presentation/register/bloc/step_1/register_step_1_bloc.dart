import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../../../data/model/dto/base/empty_model.dart';
import '../../../../data/model/entity/register/register_user_params.dart';
import '../../../../domain/register/register_user_usecase.dart';

part 'register_step_1_event.dart';

part 'register_step_1_state.dart';

part 'register_step_1_bloc.freezed.dart';

class RegisterStep1Bloc extends Bloc<RegisterStep1Event, RegisterStep1State> {
  RegisterStep1Bloc(this._registerUserUseCase)
      : super(const RegisterStep1State.initial()) {
    on<RegisterStep1Event>(
        (RegisterStep1Event event, Emitter<RegisterStep1State> emit) async {
      switch (event) {
        case RegisterStep1EventStarted():
          await _onStarted(emit);
        case RegisterStep1EventRegisterUser(
            params: final RegisterUserParams params
          ):
          await _onRegisterUser(emit, params);
        case RegisterStep1EventUploadImage():
          await _onUploadImage(emit);
      }
    });
  }

  final RegisterUserUseCase _registerUserUseCase;

  Future<void> _onStarted(Emitter<RegisterStep1State> emit) async {}

  Future<void> _onRegisterUser(
      Emitter<RegisterStep1State> emit, RegisterUserParams params) async {
    emit(const RegisterStep1State.loading());

    final Either<Failure, List<NoResponse>> dataState =
        await _registerUserUseCase(param: params);

    dataState.fold(
      (Failure l) => emit(RegisterStep1State.error(l)),
      (List<NoResponse> r) => emit(const RegisterStep1State.registerResult()),
    );
  }

  Future<void> _onUploadImage(Emitter<RegisterStep1State> emit) async {}
}
