import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../core/error_handler/error_helper.dart';
import '../api/auth/auth_api.dart';
import '../model/dto/base/base_response.dart';
import '../model/dto/request/register/register_user_params_dto.dart';
import '../model/dto/request/register/resend_otp_params_dto.dart';
import '../model/dto/request/register/verify_otp_params_dto.dart';
import '../model/dto/response/register/resend_otp_result_dto.dart';
import '../model/dto/response/register/verify_otp_result_dto.dart';
import '../model/dto/validation/register/register_user_validation_dto.dart';
import '../model/dto/validation/register/verify_otp_validation_dto.dart';

class AuthRemoteDataSource with ErrorMapper {
  AuthRemoteDataSource(this._api);

  final AuthApi _api;

  Future<Either<Failure<RegisterUserValidationDto>, void>> registerUser(
      RegisterUserParamsDto params) async {
    try {
      await _api.registerUser(params);
      return Either<Failure<RegisterUserValidationDto>, void>.right(null);
    } on DioException catch (e) {
      if (e.error is HttpBadRequestException) {
        return Either<Failure<RegisterUserValidationDto>, void>.left(
          mapValidationExceptionToFailure(
            e.error! as HttpBadRequestException,
            fromJson: RegisterUserValidationDto.fromJson,
          ),
        );
      }
      rethrow;
    }
  }

  Future<ResendOtpResultDto> resendOtpCode(ResendOtpParamsDto params) async {
    final BaseResponse<ResendOtpResultDto> response =
        await _api.resendOtpCode(params);
    return response.data;
  }

  Future<Either<Failure<VerifyOtpValidationDto>, VerifyOtpResultDto>>
      verifyOtpCode(VerifyOtpParamsDto params) async {
    try {
      final BaseResponse<VerifyOtpResultDto> response =
          await _api.verifyOtpCode(params);
      return Either<Failure<VerifyOtpValidationDto>, VerifyOtpResultDto>.right(
          response.data);
    } on DioException catch (e) {
      if (e.error is HttpBadRequestException) {
        return Either<Failure<VerifyOtpValidationDto>, VerifyOtpResultDto>.left(
          mapValidationExceptionToFailure(
            e.error! as HttpBadRequestException,
            fromJson: VerifyOtpValidationDto.fromJson,
          ),
        );
      }
      rethrow;
    }
  }
}
