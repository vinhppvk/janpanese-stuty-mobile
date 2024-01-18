import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_result_dto.g.dart';

@JsonSerializable()
class ResendOtpResultDto{

  ResendOtpResultDto({required this.email}) : super();

  factory ResendOtpResultDto.fromJson(Map<String, dynamic> json) => _$ResendOtpResultDtoFromJson(json);

  @JsonKey(name: 'email')
  final String? email;

  Map<String, dynamic> toJson() => _$ResendOtpResultDtoToJson(this);
}
