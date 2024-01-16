import '../model/dto/base/base_response.dart';
import '../model/dto/base/empty_model.dart';
import '../model/dto/register/register_user_params_dto.dart';
import '../model/dto/register/resend_otp_params_dto.dart';
import '../model/dto/register/resend_otp_result_dto.dart';
import '../model/dto/register/verify_otp_params_dto.dart';
import '../model/dto/register/verify_otp_result_dto.dart';
import '../model/entity/register/register_user_params.dart';
import '../model/entity/register/resend_otp_params.dart';
import '../model/entity/register/resend_otp_result.dart';
import '../model/entity/register/verify_otp_params.dart';
import '../model/entity/register/verify_otp_result.dart';
import '../model/mapper/register/register_user_mapper.dart';
import '../model/mapper/register/resend_otp_mapper.dart';
import '../model/mapper/register/verify_otp_mapper.dart';
import '../remote/auth/auth_service.dart';

class AuthRepository {
  const AuthRepository(this._registerService);

  final AuthService _registerService;

  Future<List<NoResponse>> registerUser(RegisterUserParams params) async {
    final RegisterUserParamsDto paramsDto = RegisterUserMappr()
        .convert<RegisterUserParams, RegisterUserParamsDto>(null);
    final BaseResponse<List<NoResponse>> response =
        await _registerService.registerUser(paramsDto);
    return response.data;
  }

  Future<ResendOtpResult> resendOtpCode(ResendOtpParams params) async {
    final ResendOtpMappr mapper = ResendOtpMappr();
    final ResendOtpParamsDto paramsDto =
        mapper.convert<ResendOtpParams, ResendOtpParamsDto>(params);
    final BaseResponse<ResendOtpResultDto> response =
        await _registerService.resendOtpCode(paramsDto);
    return mapper.convert<ResendOtpResultDto, ResendOtpResult>(response.data);
  }

  Future<VerifyOtpResult> verifyOtpCode(VerifyOtpParams params) async {
    final VerifyOtpMappr mapper = VerifyOtpMappr();
    final VerifyOtpParamsDto paramsDto =
        mapper.convert<VerifyOtpParams, VerifyOtpParamsDto>(params);
    final BaseResponse<VerifyOtpResultDto> response =
        await _registerService.verifyOtpCode(paramsDto);
    return mapper.convert<VerifyOtpResultDto, VerifyOtpResult>(response.data);
  }
}
