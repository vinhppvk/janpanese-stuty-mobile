import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/error_handler/error_helper.dart';
import '../../core/usecase.dart';
import '../../data/model/entity/request/register/resend_otp_params.dart';
import '../../data/model/entity/request/register/verify_otp_params.dart';
import '../../data/model/entity/response/register/resend_otp_result.dart';
import '../../data/model/entity/response/register/verify_otp_result.dart';
import '../../data/model/entity/validation/register/verify_otp_validation.dart';
import '../../data/repository/auth_repository.dart';
import '../../data/validation/auth_validation.dart';

class VerifyOtpUseCase
    implements UseCase<VerifyOtpResult, VerifyOtpParams, VerifyOtpValidation> {
  VerifyOtpUseCase(this._authValidation);

  final AuthValidation _authValidation;

  @override
  Future<Either<Failure<VerifyOtpValidation>, VerifyOtpResult>> call({required VerifyOtpParams params}) {
    return _authValidation.verifyOtp(params);
  }
}
