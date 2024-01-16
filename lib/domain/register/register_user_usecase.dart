import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/error_handler/error_to_failure_mapper.dart';
import '../../core/usecase.dart';
import '../../data/model/dto/base/empty_model.dart';
import '../../data/model/entity/register/register_user_params.dart';
import '../../data/repository/auth_repository.dart';

class RegisterUserUseCase
    with ErrorToFailureMapper
    implements UseCase<List<NoResponse>, RegisterUserParams> {
  const RegisterUserUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<Either<Failure, List<NoResponse>>> call(
      {required RegisterUserParams param}) async {
    try {
      final List<NoResponse> response =
          await _authRepository.registerUser(param);
      return Either<Failure, List<NoResponse>>.right(response);
    } on DioException catch (err) {
      return mapDioExceptionToFailure(err);
    } on Exception catch (err) {
      return mapExceptionToFailure(err);
    }
  }
}
