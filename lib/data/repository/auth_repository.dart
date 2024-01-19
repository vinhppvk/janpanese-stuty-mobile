import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../core/error_handler/error_helper.dart';
import '../model/dto/base/base_response.dart';
import '../model/dto/request/register/register_user_params_dto.dart';
import '../model/dto/request/register/resend_otp_params_dto.dart';
import '../model/dto/request/register/verify_otp_params_dto.dart';
import '../model/dto/response/register/resend_otp_result_dto.dart';
import '../model/dto/response/register/verify_otp_result_dto.dart';
import '../model/dto/validation/register/register_user_validation_dto.dart';
import '../model/dto/validation/register/verify_otp_validation_dto.dart';
import '../remote/auth/auth_remote_data_source.dart';

class AuthRepository with ErrorMapper {
  const AuthRepository(this._authRemoteDataSource);

  final AuthRemoteDataSource _authRemoteDataSource;

  Future<Either<Failure<RegisterUserValidationDto>, void>> registerUser(
      RegisterUserParamsDto params) async {
    try {
      await _authRemoteDataSource.registerUser(params);
      return Either<Failure<RegisterUserValidationDto>, void>.right(null);
    } on DioException catch (e) {
      return Either<Failure<RegisterUserValidationDto>, void>.left(
          mapDioExceptionToFailure(e,
              fromJson: RegisterUserValidationDto.fromJson));
    } on InAppException catch (e) {
      return Either<Failure<RegisterUserValidationDto>, void>.left(
          mapInAppExceptionFailure(e));
    } on BadKeyException catch (e) {
      return Either<Failure<RegisterUserValidationDto>, void>.left(
          mapExceptionToFailure(e));
    }
  }

  Future<Either<Failure<void>, ResendOtpResultDto>> resendOtpCode(
      ResendOtpParamsDto params) async {
    try {
      final BaseResponse<ResendOtpResultDto> response =
          await _authRemoteDataSource.resendOtpCode(params);
      return Either<Failure<void>, ResendOtpResultDto>.right(response.data);
    } on DioException catch (e) {
      return Either<Failure<void>, ResendOtpResultDto>.left(
          mapDioExceptionToFailure(e));
    } on InAppException catch (e) {
      return Either<Failure<void>, ResendOtpResultDto>.left(
          mapInAppExceptionFailure(e));
    } on BadKeyException catch (e) {
      return Either<Failure<void>, ResendOtpResultDto>.left(
          mapExceptionToFailure(e));
    }
  }

  Future<Either<Failure<VerifyOtpValidationDto>, VerifyOtpResultDto>>
      verifyOtpCode(VerifyOtpParamsDto params) async {
    try {
      final BaseResponse<VerifyOtpResultDto> response =
          await _authRemoteDataSource.verifyOtpCode(params);
      return Either<Failure<VerifyOtpValidationDto>, VerifyOtpResultDto>.right(
          response.data);
    } on DioException catch (e) {
      return Either<Failure<VerifyOtpValidationDto>, VerifyOtpResultDto>.left(
          mapDioExceptionToFailure(e,
              fromJson: VerifyOtpValidationDto.fromJson));
    } on InAppException catch (e) {
      return Either<Failure<VerifyOtpValidationDto>, VerifyOtpResultDto>.left(
          mapInAppExceptionFailure(e));
    } on BadKeyException catch (e) {
      return Either<Failure<VerifyOtpValidationDto>, VerifyOtpResultDto>.left(
          mapExceptionToFailure(e));
    }
  }
}
