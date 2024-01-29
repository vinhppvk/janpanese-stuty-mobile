import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../app/utils/enum/app_language.dart';
import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../core/error_handler/error_helper.dart';
import '../local/local_data_source.dart';
import '../model/dto/request/register/resend_otp_params_dto.dart';
import '../model/dto/response/login/login_result_dto.dart';
import '../model/dto/response/register/resend_otp_result_dto.dart';
import '../model/dto/response/register/verify_otp_result_dto.dart';
import '../model/dto/validation/login/login_validation_dto.dart';
import '../model/dto/validation/register/register_user_validation_dto.dart';
import '../model/dto/validation/register/verify_otp_validation_dto.dart';
import '../model/entity/request/login/login_params.dart';
import '../model/entity/request/register/register_user_params.dart';
import '../model/entity/request/register/resend_otp_params.dart';
import '../model/entity/request/register/verify_otp_params.dart';
import '../model/entity/response/login/login_result.dart';
import '../model/entity/response/register/resend_otp_result.dart';
import '../model/entity/response/register/verify_otp_result.dart';
import '../model/entity/validation/login/login_validation.dart';
import '../model/entity/validation/register/register_user_validation.dart';
import '../model/entity/validation/register/verify_otp_validation.dart';
import '../model/mapper/login/login_mapper.dart';
import '../model/mapper/register/register_user_mapper.dart';
import '../model/mapper/register/resend_otp_mapper.dart';
import '../model/mapper/register/verify_otp_mapper.dart';
import '../remote/auth_remote_data_source.dart';

class AuthRepository with ErrorMapper {
  const AuthRepository(this._remoteDataSource, this._localDataSource);

  final AuthRemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  Future<Either<Failure<RegisterUserValidation>, void>> registerUser(
      RegisterUserParams params) async {
    try {
      final RegisterUserMappr mappr = RegisterUserMappr();
      final Either<Failure<RegisterUserValidationDto>, void> responseState =
          await _remoteDataSource.registerUser(mappr.convert(params));
      return responseState.mapLeft(
        (Failure<RegisterUserValidationDto> failure) =>
            mapFailure(failure, convertHttpBadRequest: mappr.tryConvert),
      );
    } on DioException catch (e) {
      return Either<Failure<RegisterUserValidation>, void>.left(
        mapDioExceptionToFailure(e),
      );
    } on InAppException catch (e) {
      return Either<Failure<RegisterUserValidation>, void>.left(
        mapInAppExceptionFailure(e),
      );
    } on BadKeyException catch (e) {
      return Either<Failure<RegisterUserValidation>, void>.left(
        mapExceptionToFailure(e),
      );
    }
  }

  Future<Either<Failure<void>, ResendOtpResult>> resendOtpCode(
      ResendOtpParams params) async {
    try {
      final ResendOtpMappr mappr = ResendOtpMappr();
      final ResendOtpResultDto dtoData = await _remoteDataSource.resendOtpCode(
        mappr.convert<ResendOtpParams, ResendOtpParamsDto>(params),
      );
      return Either<Failure<void>, ResendOtpResult>.right(
        mappr.convert<ResendOtpResultDto, ResendOtpResult>(dtoData),
      );
    } on DioException catch (e) {
      return Either<Failure<void>, ResendOtpResult>.left(
        mapDioExceptionToFailure(e),
      );
    } on InAppException catch (e) {
      return Either<Failure<void>, ResendOtpResult>.left(
        mapInAppExceptionFailure(e),
      );
    } on BadKeyException catch (e) {
      return Either<Failure<void>, ResendOtpResult>.left(
        mapExceptionToFailure(e),
      );
    }
  }

  Future<Either<Failure<VerifyOtpValidation>, VerifyOtpResult>> verifyOtpCode(
      VerifyOtpParams params) async {
    try {
      final VerifyOtpMappr mappr = VerifyOtpMappr();
      final Either<Failure<VerifyOtpValidationDto>, VerifyOtpResultDto>
          responseState =
          await _remoteDataSource.verifyOtpCode(mappr.convert(params));
      return responseState
          .map(mappr.convert<VerifyOtpResultDto, VerifyOtpResult>)
          .mapLeft(
            (Failure<VerifyOtpValidationDto> failure) => mapFailure(
              failure,
              convertHttpBadRequest:
                  mappr.tryConvert<VerifyOtpValidationDto, VerifyOtpValidation>,
            ),
          );
    } on DioException catch (e) {
      return Either<Failure<VerifyOtpValidation>, VerifyOtpResult>.left(
          mapDioExceptionToFailure(e));
    } on InAppException catch (e) {
      return Either<Failure<VerifyOtpValidation>, VerifyOtpResult>.left(
          mapInAppExceptionFailure(e));
    } on BadKeyException catch (e) {
      return Either<Failure<VerifyOtpValidation>, VerifyOtpResult>.left(
          mapExceptionToFailure(e));
    }
  }

  Future<Either<Failure<LoginValidation>, LoginResult>> login(
      LoginParams params) async {
    try {
      final LoginMappr mappr = LoginMappr();

      final Either<Failure<LoginValidationDto>, LoginResultDto>
          responseDtoState =
          await _remoteDataSource.login(mappr.convert(params));

      final Either<Failure<LoginValidation>, LoginResult> responseState =
          responseDtoState
              .map(mappr.convert<LoginResultDto, LoginResult>)
              .mapLeft(
                (Failure<LoginValidationDto> failure) => mapFailure(
                  failure,
                  convertHttpBadRequest:
                      mappr.tryConvert<LoginValidationDto, LoginValidation>,
                ),
              );

      responseState.fold(
        (_) => null,
        (LoginResult response) => _saveLoginData(response, params.rememberMe),
      );

      return responseState;
    } on DioException catch (e) {
      return Either<Failure<LoginValidation>, LoginResult>.left(
          mapDioExceptionToFailure(e));
    } on InAppException catch (e) {
      return Either<Failure<LoginValidation>, LoginResult>.left(
          mapInAppExceptionFailure(e));
    } on BadKeyException catch (e) {
      return Either<Failure<LoginValidation>, LoginResult>.left(
          mapExceptionToFailure(e));
    }
  }

  void _saveLoginData(LoginResult result, bool rememberMe) {
    _localDataSource.setAccessToken(result.token ?? '');
    _localDataSource.setRefreshToken(result.refreshToken ?? '');
    _localDataSource.setEmail(result.email ?? '');
    _localDataSource.setNickName(result.nickName ?? '');
    _localDataSource.setImagePhoto(result.imagePhoto ?? '');
    _localDataSource.setRememberMe(rememberMe);
  }

  void setLanguage(AppLanguage appLanguage) {
    _localDataSource.setLanguage(appLanguage);
  }

  AppLanguage? getLanguage() =>
      _localDataSource.getLanguage();
}
