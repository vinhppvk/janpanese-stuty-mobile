import 'package:json_annotation/json_annotation.dart';

part 'example_user_dto.g.dart';

@JsonSerializable()
class ExampleUserDto {
  ExampleUserDto({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory ExampleUserDto.fromJson(Map<String, dynamic> json) =>
      _$ExampleUserDtoFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'username')
  final String username;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'address')
  final AddressDto address;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'website')
  final String website;
  @JsonKey(name: 'company')
  final CompanyDto company;

  Map<String, dynamic> toJson() => _$ExampleUserDtoToJson(this);
}

@JsonSerializable()
class AddressDto {
  AddressDto({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);

  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'suite')
  final String suite;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'zipcode')
  final String zipcode;
  @JsonKey(name: 'geo')
  final GeoDto geo;

  Map<String, dynamic> toJson() => _$AddressDtoToJson(this);
}

@JsonSerializable()
class GeoDto {
  GeoDto({
    required this.lat,
    required this.lng,
  });

  factory GeoDto.fromJson(Map<String, dynamic> json) => _$GeoDtoFromJson(json);

  @JsonKey(name: 'lat')
  final String lat;
  @JsonKey(name: 'lng')
  final String lng;

  Map<String, dynamic> toJson() => _$GeoDtoToJson(this);
}

@JsonSerializable()
class CompanyDto {
  CompanyDto({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory CompanyDto.fromJson(Map<String, dynamic> json) =>
      _$CompanyDtoFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'catchPhrase')
  final String catchPhrase;
  @JsonKey(name: 'bs')
  final String bs;

  Map<String, dynamic> toJson() => _$CompanyDtoToJson(this);
}
