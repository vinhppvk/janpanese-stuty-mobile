// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../dto/response/example/example_user_dto.dart' as _i2;
import '../../entity/response/example/example_user.dart' as _i3;

/// {@template package:japanese_study/data/model/mapper/example/example_mapper.dart}
/// Available mappings:
/// - `ExampleUserDto` → `ExampleUser`.
/// - `AddressDto` → `Address`.
/// - `GeoDto` → `Geo`.
/// - `CompanyDto` → `Company`.
/// {@endtemplate}
class $ExampleMappr implements _i1.AutoMapprInterface {
  const $ExampleMappr();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:japanese_study/data/model/mapper/example/example_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.ExampleUserDto>() ||
            sourceTypeOf == _typeOf<_i2.ExampleUserDto?>()) &&
        (targetTypeOf == _typeOf<_i3.ExampleUser>() ||
            targetTypeOf == _typeOf<_i3.ExampleUser?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.AddressDto>() ||
            sourceTypeOf == _typeOf<_i2.AddressDto?>()) &&
        (targetTypeOf == _typeOf<_i3.Address>() ||
            targetTypeOf == _typeOf<_i3.Address?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.GeoDto>() ||
            sourceTypeOf == _typeOf<_i2.GeoDto?>()) &&
        (targetTypeOf == _typeOf<_i3.Geo>() ||
            targetTypeOf == _typeOf<_i3.Geo?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.CompanyDto>() ||
            sourceTypeOf == _typeOf<_i2.CompanyDto?>()) &&
        (targetTypeOf == _typeOf<_i3.Company>() ||
            targetTypeOf == _typeOf<_i3.Company?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:japanese_study/data/model/mapper/example/example_mapper.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:japanese_study/data/model/mapper/example/example_mapper.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(
        model,
        canReturnNull: true,
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(model);
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:japanese_study/data/model/mapper/example/example_mapper.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:japanese_study/data/model/mapper/example/example_mapper.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
      Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>((item) => _convert(item, canReturnNull: true));
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:japanese_study/data/model/mapper/example/example_mapper.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:japanese_study/data/model/mapper/example/example_mapper.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:japanese_study/data/model/mapper/example/example_mapper.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:japanese_study/data/model/mapper/example/example_mapper.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.ExampleUserDto>() ||
            sourceTypeOf == _typeOf<_i2.ExampleUserDto?>()) &&
        (targetTypeOf == _typeOf<_i3.ExampleUser>() ||
            targetTypeOf == _typeOf<_i3.ExampleUser?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$ExampleUserDto_To__i3$ExampleUser(
          (model as _i2.ExampleUserDto?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.AddressDto>() ||
            sourceTypeOf == _typeOf<_i2.AddressDto?>()) &&
        (targetTypeOf == _typeOf<_i3.Address>() ||
            targetTypeOf == _typeOf<_i3.Address?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$AddressDto_To__i3$Address((model as _i2.AddressDto?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.GeoDto>() ||
            sourceTypeOf == _typeOf<_i2.GeoDto?>()) &&
        (targetTypeOf == _typeOf<_i3.Geo>() ||
            targetTypeOf == _typeOf<_i3.Geo?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$GeoDto_To__i3$Geo((model as _i2.GeoDto?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.CompanyDto>() ||
            sourceTypeOf == _typeOf<_i2.CompanyDto?>()) &&
        (targetTypeOf == _typeOf<_i3.Company>() ||
            targetTypeOf == _typeOf<_i3.Company?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CompanyDto_To__i3$Company((model as _i2.CompanyDto?))
          as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  _i3.ExampleUser _map__i2$ExampleUserDto_To__i3$ExampleUser(
      _i2.ExampleUserDto? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ExampleUserDto → ExampleUser failed because ExampleUserDto was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ExampleUserDto, ExampleUser> to handle null values during mapping.');
    }
    return _i3.ExampleUser(
      id: model.id,
      name: model.name,
      username: model.username,
      email: model.email,
      address: _map__i2$AddressDto_To__i3$Address(model.address),
      phone: model.phone,
      website: model.website,
      company: _map__i2$CompanyDto_To__i3$Company(model.company),
    );
  }

  _i3.Address _map__i2$AddressDto_To__i3$Address(_i2.AddressDto? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping AddressDto → Address failed because AddressDto was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<AddressDto, Address> to handle null values during mapping.');
    }
    return _i3.Address(
      street: model.street,
      suite: model.suite,
      city: model.city,
      zipcode: model.zipcode,
      geo: _map__i2$GeoDto_To__i3$Geo(model.geo),
    );
  }

  _i3.Geo _map__i2$GeoDto_To__i3$Geo(_i2.GeoDto? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping GeoDto → Geo failed because GeoDto was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<GeoDto, Geo> to handle null values during mapping.');
    }
    return _i3.Geo(
      lat: model.lat,
      lng: model.lng,
    );
  }

  _i3.Company _map__i2$CompanyDto_To__i3$Company(_i2.CompanyDto? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CompanyDto → Company failed because CompanyDto was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CompanyDto, Company> to handle null values during mapping.');
    }
    return _i3.Company(
      name: model.name,
      catchPhrase: model.catchPhrase,
      bs: model.bs,
    );
  }
}
