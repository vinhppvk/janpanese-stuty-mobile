import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/error_handler/error_helper.dart';
import '../../core/usecase.dart';
import '../../data/model/dto/response/register/verify_otp_result_dto.dart';
import '../../data/model/dto/validation/register/verify_otp_validation_dto.dart';
import '../../data/model/entity/request/register/verify_otp_params.dart';
import '../../data/model/entity/response/register/verify_otp_result.dart';
import '../../data/model/entity/validation/register/verify_otp_validation.dart';
import '../../data/model/mapper/register/verify_otp_mapper.dart';
import '../../data/repository/auth_repository.dart';

class VerifyOtpUseCase
    with ErrorMapper
    implements UseCase<VerifyOtpResult, VerifyOtpParams, VerifyOtpValidation> {
  VerifyOtpUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<Either<Failure<VerifyOtpValidation>, VerifyOtpResult>> call(
      {required VerifyOtpParams params}) async {
    final VerifyOtpMappr mapper = VerifyOtpMappr();
    final Either<Failure<VerifyOtpValidationDto>, VerifyOtpResultDto>
        dataState = await _authRepository.verifyOtpCode(mapper.convert(params));
    return dataState
        .mapLeft(
          (Failure<VerifyOtpValidationDto> failure) => mapFailure(
            failure,
            mapValidationData:
                mapper.tryConvert<VerifyOtpValidationDto, VerifyOtpValidation>,
          ),
        )
        .map(mapper.convert<VerifyOtpResultDto, VerifyOtpResult>);
  }
}
