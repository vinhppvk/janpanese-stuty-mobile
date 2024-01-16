import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/error_handler/error_to_failure_mapper.dart';
import '../../core/usecase.dart';
import '../../data/model/entity/register/resend_otp_params.dart';
import '../../data/model/entity/register/resend_otp_result.dart';
import '../../data/repository/auth_repository.dart';

class ResendOtpUseCase
    with ErrorToFailureMapper
    implements UseCase<ResendOtpResult, ResendOtpParams> {
  ResendOtpUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<Either<Failure, ResendOtpResult>> call(
      {required ResendOtpParams param}) async {
    try {
      final ResendOtpResult response =
          await _authRepository.resendOtpCode(param);
      return Either<Failure, ResendOtpResult>.right(response);
    } on DioException catch (err) {
      return mapDioExceptionToFailure(err);
    } on Exception catch (err) {
      return mapExceptionToFailure(err);
    }
  }
}
