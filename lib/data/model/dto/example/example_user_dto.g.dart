// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleUserDto _$ExampleUserDtoFromJson(Map<String, dynamic> json) =>
    ExampleUserDto(
      id: json['id'] as int,
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      website: json['website'] as String,
      company: CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExampleUserDtoToJson(ExampleUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
    };

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) => AddressDto(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: GeoDto.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressDtoToJson(AddressDto instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };

GeoDto _$GeoDtoFromJson(Map<String, dynamic> json) => GeoDto(
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );

Map<String, dynamic> _$GeoDtoToJson(GeoDto instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

CompanyDto _$CompanyDtoFromJson(Map<String, dynamic> json) => CompanyDto(
      name: json['name'] as String,
      catchPhrase: json['catchPhrase'] as String,
      bs: json['bs'] as String,
    );

Map<String, dynamic> _$CompanyDtoToJson(CompanyDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
