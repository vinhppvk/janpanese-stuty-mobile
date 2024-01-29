// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_validation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpValidationDto _$VerifyOtpValidationDtoFromJson(
        Map<String, dynamic> json) =>
    VerifyOtpValidationDto(
      authCode: (json['auth_code'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$VerifyOtpValidationDtoToJson(
        VerifyOtpValidationDto instance) =>
    <String, dynamic>{
      'auth_code': instance.authCode,
    };
