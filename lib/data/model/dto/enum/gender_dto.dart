import 'package:freezed_annotation/freezed_annotation.dart';

enum GenderDto {
  @JsonValue(1)
  male,
  @JsonValue(2)
  female,
  @JsonValue(3)
  other;
}
