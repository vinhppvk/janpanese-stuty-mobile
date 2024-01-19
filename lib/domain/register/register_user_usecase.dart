import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/error_handler/error_helper.dart';
import '../../core/usecase.dart';
import '../../data/model/dto/validation/register/register_user_validation_dto.dart';
import '../../data/model/entity/request/register/register_user_params.dart';
import '../../data/model/entity/validation/register/register_user_validation.dart';
import '../../data/model/mapper/register/register_user_mapper.dart';
import '../../data/repository/auth_repository.dart';

class RegisterUserUseCase
    with ErrorMapper
    implements UseCase<void, RegisterUserParams, RegisterUserValidation> {
  const RegisterUserUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<Either<Failure<RegisterUserValidation>, void>> call(
      {required RegisterUserParams params}) async {
    final RegisterUserMappr mapper = RegisterUserMappr();
    final Either<Failure<RegisterUserValidationDto>, void> dataState =
        await _authRepository.registerUser(mapper.convert(params));
    return dataState.mapLeft(
      (Failure<RegisterUserValidationDto> failure) => mapFailure(
        failure,
        mapValidationData: mapper
            .tryConvert<RegisterUserValidationDto, RegisterUserValidation>,
      ),
    );
  }
}
