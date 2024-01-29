import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/usecase.dart';
import '../../data/model/entity/request/login/login_params.dart';
import '../../data/model/entity/response/login/login_result.dart';
import '../../data/model/entity/validation/login/login_validation.dart';
import '../../data/repository/auth_repository.dart';

class LoginUseCase
    implements RemoteUseCase<LoginResult, LoginParams, LoginValidation> {
  LoginUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure<LoginValidation>, LoginResult>> call(
          {required LoginParams params}) =>
      _repository.login(params);
}
