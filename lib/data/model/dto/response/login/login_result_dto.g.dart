// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResultDto _$LoginResultDtoFromJson(Map<String, dynamic> json) =>
    LoginResultDto(
      token: json['token'] as String?,
      refreshToken: json['refresh_token'] as String?,
      email: json['email'] as String?,
      nickName: json['nickname'] as String?,
    );

Map<String, dynamic> _$LoginResultDtoToJson(LoginResultDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh_token': instance.refreshToken,
      'email': instance.email,
      'nickname': instance.nickName,
    };
