import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/error_handler/error_to_failure_mapper.dart';
import '../../core/usecase.dart';
import '../../data/model/entity/register/resend_otp_params.dart';
import '../../data/model/entity/register/resend_otp_result.dart';
import '../../data/model/entity/register/verify_otp_params.dart';
import '../../data/model/entity/register/verify_otp_params.dart';
import '../../data/model/entity/register/verify_otp_result.dart';
import '../../data/repository/auth_repository.dart';

class VerifyOtpUseCase
    with ErrorToFailureMapper
    implements UseCase<VerifyOtpResult, VerifyOtpParams> {
  VerifyOtpUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<Either<Failure, VerifyOtpResult>> call(
      {required VerifyOtpParams param}) async {
    try {
      final VerifyOtpResult response =
          await _authRepository.verifyOtpCode(param);
      return Either<Failure, VerifyOtpResult>.right(response);
    } on DioException catch (err) {
      return mapDioExceptionToFailure(err);
    } on Exception catch (err) {
      return mapExceptionToFailure(err);
    }
  }
}
