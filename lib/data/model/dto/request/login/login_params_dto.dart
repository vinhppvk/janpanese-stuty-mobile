import 'package:json_annotation/json_annotation.dart';

part 'login_params_dto.g.dart';

@JsonSerializable()
class LoginParamsDto {
  LoginParamsDto({
    required this.email,
    required this.password,
  });

  factory LoginParamsDto.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsDtoFromJson(json);

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'password')
  final String password;

  Map<String, dynamic> toJson() => _$LoginParamsDtoToJson(this);
}
