import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/usecase.dart';
import '../../data/model/entity/request/register/register_user_params.dart';
import '../../data/model/entity/validation/register/register_user_validation.dart';
import '../../data/repository/auth_repository.dart';

class RegisterUserUseCase
    implements UseCase<void, RegisterUserParams, RegisterUserValidation> {
  const RegisterUserUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure<RegisterUserValidation>, void>> call(
          {required RegisterUserParams params}) async =>
      _repository.registerUser(params);
}
