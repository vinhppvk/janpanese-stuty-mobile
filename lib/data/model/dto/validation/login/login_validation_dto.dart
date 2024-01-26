import 'package:json_annotation/json_annotation.dart';

part 'login_validation_dto.g.dart';

@JsonSerializable()
class LoginValidationDto {
  LoginValidationDto({
    required this.email,
    required this.password,
  });

  factory LoginValidationDto.fromJson(Map<String, dynamic> json) =>
      _$LoginValidationDtoFromJson(json);

  @JsonKey(name: 'email')
  final List<String>? email;

  @JsonKey(name: 'password')
  final List<String>? password;

  Map<String, dynamic> toJson() => _$LoginValidationDtoToJson(this);
}
