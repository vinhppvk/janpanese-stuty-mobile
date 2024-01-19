// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_params_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterUserParamsDto _$RegisterUserParamsDtoFromJson(
        Map<String, dynamic> json) =>
    RegisterUserParamsDto(
      email: json['email'] as String,
      nickName: json['nickname'] as String,
      sex: $enumDecodeNullable(_$GenderDtoEnumMap, json['sex']),
      birthday: json['birthday'] as String?,
      phoneNumber: json['phone_number'] as String,
      nationality: json['nationality'] as String,
      password: json['password'] as String,
      imagePhoto: json['image_photo'] as String?,
      confirmPassword: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$RegisterUserParamsDtoToJson(
    RegisterUserParamsDto instance) {
  final val = <String, dynamic>{
    'email': instance.email,
    'nickname': instance.nickName,
    'phone_number': instance.phoneNumber,
    'nationality': instance.nationality,
    'password': instance.password,
    'password_confirmation': instance.confirmPassword,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sex', _$GenderDtoEnumMap[instance.sex]);
  writeNotNull('birthday', instance.birthday);
  writeNotNull('image_photo', instance.imagePhoto);
  return val;
}

const _$GenderDtoEnumMap = {
  GenderDto.male: 1,
  GenderDto.female: 2,
  GenderDto.other: 3,
};
