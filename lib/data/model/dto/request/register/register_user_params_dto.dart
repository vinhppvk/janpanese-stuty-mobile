import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enum/gender_dto.dart';

part 'register_user_params_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class RegisterUserParamsDto {
  RegisterUserParamsDto({
    required this.email,
    required this.nickName,
    required this.sex,
    required this.birthday,
    required this.phoneNumber,
    required this.nationality,
    required this.password,
    required this.imagePhoto,
    required this.confirmPassword,
  });

  factory RegisterUserParamsDto.fromJson(Map<String, dynamic> json) => _$RegisterUserParamsDtoFromJson(json);

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'nickname')
  final String nickName;

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @JsonKey(name: 'nationality')
  final String nationality;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;

  @JsonKey(name: 'sex')
  final GenderDto? sex;

  @JsonKey(name: 'birthday')
  final String? birthday;

  @JsonKey(name: 'image_photo')
  final String? imagePhoto;

  Map<String, dynamic> toJson() => _$RegisterUserParamsDtoToJson(this);
}
