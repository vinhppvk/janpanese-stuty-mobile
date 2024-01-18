import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/error_handler/error_helper.dart';
import '../model/dto/request/register/register_user_params_dto.dart';
import '../model/dto/response/register/verify_otp_result_dto.dart';
import '../model/dto/validation/register/register_user_validation_dto.dart';
import '../model/dto/validation/register/verify_otp_validation_dto.dart';
import '../model/entity/request/register/register_user_params.dart';
import '../model/entity/request/register/verify_otp_params.dart';
import '../model/entity/response/register/verify_otp_result.dart';
import '../model/entity/validation/register/register_user_validation.dart';
import '../model/entity/validation/register/verify_otp_validation.dart';
import '../model/mapper/register/register_user_mapper.dart';
import '../model/mapper/register/verify_otp_mapper.dart';
import '../repository/auth_repository.dart';

class AuthValidation with ErrorMapper {
  AuthValidation(this._authRepository);

  final AuthRepository _authRepository;

  Future<Either<Failure<RegisterUserValidation>, void>> registerUser(
      RegisterUserParams params) async {
    final RegisterUserMappr mapper = RegisterUserMappr();
    final Either<Failure<RegisterUserValidationDto>, void> dataState =
        await _authRepository.registerUser(mapper.convert(params));
    return dataState.mapLeft(
      (Failure<RegisterUserValidationDto> failure) => mapFailure(
        failure,
        mapValidationData: mapper
            .tryConvert<RegisterUserValidationDto, RegisterUserValidation>,
      ),
    );
  }

  Future<Either<Failure<VerifyOtpValidation>, VerifyOtpResult>> verifyOtp(
      VerifyOtpParams params) async {
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
