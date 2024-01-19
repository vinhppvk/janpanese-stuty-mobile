import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/usecase.dart';
import '../../data/model/dto/response/register/resend_otp_result_dto.dart';
import '../../data/model/entity/request/register/resend_otp_params.dart';
import '../../data/model/entity/response/register/resend_otp_result.dart';
import '../../data/model/mapper/register/resend_otp_mapper.dart';
import '../../data/repository/auth_repository.dart';

class ResendOtpUseCase
    implements UseCase<ResendOtpResult, ResendOtpParams, void> {
  ResendOtpUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<Either<Failure<void>, ResendOtpResult>> call(
      {required ResendOtpParams params}) async {
    final ResendOtpMappr mappr = ResendOtpMappr();
    final Either<Failure<void>, ResendOtpResultDto> response =
        await _authRepository.resendOtpCode(mappr.convert(params));
    return response.map(mappr.convert<ResendOtpResultDto, ResendOtpResult>);
  }
}
