import 'package:json_annotation/json_annotation.dart';
import '../../dto/example/example_user_dto.dart';

part 'example_user.g.dart';

@JsonSerializable()
class ExampleUser extends ExampleUserDto {
  ExampleUser({
    required super.id,
    required super.name,
    required super.username,
    required super.email,
    required super.address,
    required super.phone,
    required super.website,
    required super.company,
  });

  factory ExampleUser.fromJson(Map<String, dynamic> json) =>
      _$ExampleUserFromJson(json);
}
