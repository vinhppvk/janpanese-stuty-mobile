import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../model/dto/base/base_response.dart';
import '../../model/dto/base/empty_model.dart';
import '../../model/dto/register/register_user_params_dto.dart';
import '../../model/dto/register/resend_otp_params_dto.dart';
import '../../model/dto/register/resend_otp_result_dto.dart';
import '../../model/dto/register/verify_otp_params_dto.dart';
import '../../model/dto/register/verify_otp_result_dto.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST('/student/register')
  Future<BaseResponse<List<NoResponse>>> registerUser(
      @Body() RegisterUserParamsDto params);

  @POST('/student/auth_new_code')
  Future<BaseResponse<ResendOtpResultDto>> resendOtpCode(
      @Body() ResendOtpParamsDto params);

  @POST('/student/auth_confirm')
  Future<BaseResponse<VerifyOtpResultDto>> verifyOtpCode(
      @Body() VerifyOtpParamsDto params);
}
