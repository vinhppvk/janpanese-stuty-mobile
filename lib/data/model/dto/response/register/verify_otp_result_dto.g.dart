// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpResultDto _$VerifyOtpResultDtoFromJson(Map<String, dynamic> json) =>
    VerifyOtpResultDto(
      authCode: json['auth_code'] as int?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$VerifyOtpResultDtoToJson(VerifyOtpResultDto instance) =>
    <String, dynamic>{
      'auth_code': instance.authCode,
      'email': instance.email,
    };
