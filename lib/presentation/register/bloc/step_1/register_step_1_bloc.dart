import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../../../data/model/dto/base/empty_model.dart';
import '../../../../data/model/dto/validation/register/register_user_validation_dto.dart';
import '../../../../data/model/entity/request/register/register_user_params.dart';
import '../../../../data/model/entity/validation/register/register_user_validation.dart';
import '../../../../data/model/mapper/register/register_user_mapper.dart';
import '../../../../data/repository/auth_repository.dart';
import '../../../../data/validation/auth_validation.dart';
import '../../../../domain/register/register_user_usecase.dart';

part 'register_step_1_event.dart';

part 'register_step_1_state.dart';

part 'register_step_1_bloc.freezed.dart';

class RegisterStep1Bloc extends Bloc<RegisterStep1Event, RegisterStep1State> {
  RegisterStep1Bloc(
    this._registerUserUseCase,
  ) : super(const RegisterStep1State.initial()) {
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

    final Either<Failure<RegisterUserValidation>, void> dataState =
        await _registerUserUseCase(params: params);

    dataState.fold(
      (Failure<RegisterUserValidation> l) => emit(RegisterStep1State.registerUserError(l)),
      (void r) => emit(const RegisterStep1State.registerResult()),
    );
  }

  Future<void> _onUploadImage(Emitter<RegisterStep1State> emit) async {}
}
