// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_validation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginValidationDto _$LoginValidationDtoFromJson(Map<String, dynamic> json) =>
    LoginValidationDto(
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
      password: (json['password'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$LoginValidationDtoToJson(LoginValidationDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
