import 'package:json_annotation/json_annotation.dart';

part 'empty_model.g.dart';

class NoParam {}

@JsonSerializable()
class NoResponse {
  const NoResponse();

  factory NoResponse.fromJson(Map<String, dynamic> json) =>
      _$NoResponseFromJson(json);
}
