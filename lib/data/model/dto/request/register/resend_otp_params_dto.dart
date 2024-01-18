import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_params_dto.g.dart';

@JsonSerializable()
class ResendOtpParamsDto {
  ResendOtpParamsDto({required this.email});

  factory ResendOtpParamsDto.fromJson(Map<String, dynamic> json) => _$ResendOtpParamsDtoFromJson(json);

  @JsonKey(name: 'email')
  final String email;

  Map<String, dynamic> toJson() => _$ResendOtpParamsDtoToJson(this);
}
