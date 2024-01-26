import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/usecase.dart';
import '../../data/model/entity/request/register/resend_otp_params.dart';
import '../../data/model/entity/response/register/resend_otp_result.dart';
import '../../data/repository/auth_repository.dart';

class ResendOtpUseCase
    implements RemoteUseCase<ResendOtpResult, ResendOtpParams, void> {
  ResendOtpUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure<void>, ResendOtpResult>> call(
          {required ResendOtpParams params}) async =>
      _repository.resendOtpCode(params);
}
