import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_result_dto.g.dart';

@JsonSerializable()
class VerifyOtpResultDto {
  VerifyOtpResultDto({required this.authCode, required this.email});

  factory VerifyOtpResultDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResultDtoFromJson(json);

  @JsonKey(name: 'auth_code')
  final int? authCode;

  @JsonKey(name: 'email')
  final String? email;

  Map<String, dynamic> toJson() => _$VerifyOtpResultDtoToJson(this);
}
