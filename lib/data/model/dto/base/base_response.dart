import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  BaseResponse(this.status, this.message, this.data);

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);

  @JsonKey(name: 'status')
  final bool status;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'data')
  final T data;
}
