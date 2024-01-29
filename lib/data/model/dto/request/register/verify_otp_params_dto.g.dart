// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_params_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpParamsDto _$VerifyOtpParamsDtoFromJson(Map<String, dynamic> json) =>
    VerifyOtpParamsDto(
      email: json['email'] as String,
      otpCode: json['auth_code'] as String,
    );

Map<String, dynamic> _$VerifyOtpParamsDtoToJson(VerifyOtpParamsDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'auth_code': instance.otpCode,
    };
