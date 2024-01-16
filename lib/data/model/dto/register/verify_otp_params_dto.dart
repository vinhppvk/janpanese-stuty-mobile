import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_params_dto.g.dart';

@JsonSerializable()
class VerifyOtpParamsDto {
  VerifyOtpParamsDto({required this.email, required this.otpCode});

  factory VerifyOtpParamsDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpParamsDtoFromJson(json);

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'auth_code')
  final String otpCode;

  Map<String, dynamic> toJson() => _$VerifyOtpParamsDtoToJson(this);
}
