import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_validation_dto.g.dart';

@JsonSerializable()
class VerifyOtpValidationDto {
  VerifyOtpValidationDto({required this.authCode});

  factory VerifyOtpValidationDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpValidationDtoFromJson(json);

  @JsonKey(name: 'auth_code')
  final List<String>? authCode;
}
