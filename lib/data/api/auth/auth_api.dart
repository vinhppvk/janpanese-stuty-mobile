import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../model/dto/base/base_response.dart';
import '../../model/dto/request/register/register_user_params_dto.dart';
import '../../model/dto/request/register/resend_otp_params_dto.dart';
import '../../model/dto/request/register/verify_otp_params_dto.dart';
import '../../model/dto/response/register/resend_otp_result_dto.dart';
import '../../model/dto/response/register/verify_otp_result_dto.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST('/student/register')
  Future<void> registerUser(@Body() RegisterUserParamsDto params);

  @POST('/student/auth_new_code')
  Future<BaseResponse<ResendOtpResultDto>> resendOtpCode(
      @Body() ResendOtpParamsDto params);

  @POST('/student/auth_confirm')
  Future<BaseResponse<VerifyOtpResultDto>> verifyOtpCode(
      @Body() VerifyOtpParamsDto params);
}
