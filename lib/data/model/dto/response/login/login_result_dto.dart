import 'package:json_annotation/json_annotation.dart';

part 'login_result_dto.g.dart';

@JsonSerializable()
class LoginResultDto {
  LoginResultDto({
    required this.token,
    required this.refreshToken,
    required this.email,
    required this.nickName,
    required this.imagePhoto,
  });

  factory LoginResultDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResultDtoFromJson(json);

  @JsonKey(name: 'token')
  final String? token;

  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'nickname')
  final String? nickName;

  @JsonKey(name: 'image_photo')
  final String? imagePhoto;

  Map<String, dynamic> toJson() => _$LoginResultDtoToJson(this);
}
