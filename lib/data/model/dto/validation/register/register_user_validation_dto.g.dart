// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_validation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterUserValidationDto _$RegisterUserValidationDtoFromJson(
        Map<String, dynamic> json) =>
    RegisterUserValidationDto(
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
      nickName: (json['nickname'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sex: (json['sex'] as List<dynamic>?)?.map((e) => e as String).toList(),
      birthday: (json['birthday'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      phoneNumber: (json['phone_number'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nationality: (json['nationality'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      password: (json['password'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imagePhoto: (json['image_photo'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      confirmPassword: (json['password_confirmation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RegisterUserValidationDtoToJson(
        RegisterUserValidationDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'nickname': instance.nickName,
      'phone_number': instance.phoneNumber,
      'nationality': instance.nationality,
      'password': instance.password,
      'password_confirmation': instance.confirmPassword,
      'sex': instance.sex,
      'birthday': instance.birthday,
      'image_photo': instance.imagePhoto,
    };
