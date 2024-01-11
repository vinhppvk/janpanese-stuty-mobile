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
  final Address address;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'website')
  final String website;
  @JsonKey(name: 'company')
  final Company company;

  Map<String, dynamic> toJson() => _$ExampleUserDtoToJson(this);
}

@JsonSerializable()
class Address {
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'suite')
  final String suite;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'zipcode')
  final String zipcode;
  @JsonKey(name: 'geo')
  final Geo geo;

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Geo {
  Geo({
    required this.lat,
    required this.lng,
  });

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
  @JsonKey(name: 'lat')
  final String lat;
  @JsonKey(name: 'lng')
  final String lng;

  Map<String, dynamic> toJson() => _$GeoToJson(this);
}

@JsonSerializable()
class Company {
  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'catchPhrase')
  final String catchPhrase;
  @JsonKey(name: 'bs')
  final String bs;

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
