import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/usecase.dart';
import '../../data/model/entity/request/register/verify_otp_params.dart';
import '../../data/model/entity/response/register/verify_otp_result.dart';
import '../../data/model/entity/validation/register/verify_otp_validation.dart';
import '../../data/repository/auth_repository.dart';

class VerifyOtpUseCase
    implements UseCase<VerifyOtpResult, VerifyOtpParams, VerifyOtpValidation> {
  VerifyOtpUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure<VerifyOtpValidation>, VerifyOtpResult>> call(
      {required VerifyOtpParams params}) => _repository.verifyOtpCode(params);
}
