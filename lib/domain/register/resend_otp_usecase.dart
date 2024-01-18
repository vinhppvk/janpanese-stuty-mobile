import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/error_handler/error_helper.dart';
import '../../core/usecase.dart';
import '../../data/model/entity/request/register/resend_otp_params.dart';
import '../../data/model/entity/response/register/resend_otp_result.dart';
import '../../data/repository/auth_repository.dart';

class ResendOtpUseCase
    implements UseCase<ResendOtpResult, ResendOtpParams, void> {
  ResendOtpUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<Either<Failure<void>, ResendOtpResult>> call(
      {required ResendOtpParams params}) async {
    return _authRepository.resendOtpCode(params);
  }
}
