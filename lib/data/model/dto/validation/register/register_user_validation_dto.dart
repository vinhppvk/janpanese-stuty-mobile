import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_user_validation_dto.g.dart';

@JsonSerializable()
class RegisterUserValidationDto {
  RegisterUserValidationDto({
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

  factory RegisterUserValidationDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserValidationDtoFromJson(json);

  @JsonKey(name: 'email')
  final List<String>? email;

  @JsonKey(name: 'nickname')
  final List<String>? nickName;

  @JsonKey(name: 'phone_number')
  final List<String>? phoneNumber;

  @JsonKey(name: 'nationality')
  final List<String>? nationality;

  @JsonKey(name: 'password')
  final List<String>? password;

  @JsonKey(name: 'password_confirmation')
  final List<String>? confirmPassword;

  @JsonKey(name: 'sex')
  final List<String>? sex;

  @JsonKey(name: 'birthday')
  final List<String>? birthday;

  @JsonKey(name: 'image_photo')
  final List<String>? imagePhoto;
}
