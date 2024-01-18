import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/usecase.dart';
import '../../data/model/entity/request/register/register_user_params.dart';
import '../../data/model/entity/validation/register/register_user_validation.dart';
import '../../data/validation/auth_validation.dart';

class RegisterUserUseCase
    implements UseCase<void, RegisterUserParams, RegisterUserValidation> {
  const RegisterUserUseCase(this._authValidation);

  final AuthValidation _authValidation;

  @override
  Future<Either<Failure<RegisterUserValidation>, void>> call(
          {required RegisterUserParams params}) =>
      _authValidation.registerUser(params);
}
