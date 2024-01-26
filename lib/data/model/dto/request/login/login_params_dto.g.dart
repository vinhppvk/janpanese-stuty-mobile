// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_params_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginParamsDto _$LoginParamsDtoFromJson(Map<String, dynamic> json) =>
    LoginParamsDto(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginParamsDtoToJson(LoginParamsDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
