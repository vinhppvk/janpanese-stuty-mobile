// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../dto/request/login/login_params_dto.dart' as _i3;
import '../../dto/response/login/login_result_dto.dart' as _i4;
import '../../dto/validation/login/login_validation_dto.dart' as _i6;
import '../../entity/request/login/login_params.dart' as _i2;
import '../../entity/response/login/login_result.dart' as _i5;
import '../../entity/validation/login/login_validation.dart' as _i7;
import '../utils/common_type_converter.dart' as _i8;

/// {@template package:japanese_study/data/model/mapper/login/login_mapper.dart}
/// Available mappings:
/// - `LoginParams` → `LoginParamsDto`.
/// - `LoginResultDto` → `LoginResult`.
/// - `LoginValidationDto` → `LoginValidation`.
/// {@endtemplate}
class $LoginMappr implements _i1.AutoMapprInterface {
  const $LoginMappr();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:japanese_study/data/model/mapper/login/login_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.LoginParams>() ||
            sourceTypeOf == _typeOf<_i2.LoginParams?>()) &&
        (targetTypeOf == _typeOf<_i3.LoginParamsDto>() ||
            targetTypeOf == _typeOf<_i3.LoginParamsDto?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.LoginResultDto>() ||
            sourceTypeOf == _typeOf<_i4.LoginResultDto?>()) &&
        (targetTypeOf == _typeOf<_i5.LoginResult>() ||
            targetTypeOf == _typeOf<_i5.LoginResult?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.LoginValidationDto>() ||
            sourceTypeOf == _typeOf<_i6.LoginValidationDto?>()) &&
        (targetTypeOf == _typeOf<_i7.LoginValidation>() ||
            targetTypeOf == _typeOf<_i7.LoginValidation?>())) {
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
  /// {@macro package:japanese_study/data/model/mapper/login/login_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/login/login_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/login/login_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/login/login_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/login/login_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/login/login_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/login/login_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/login/login_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.LoginParams>() ||
            sourceTypeOf == _typeOf<_i2.LoginParams?>()) &&
        (targetTypeOf == _typeOf<_i3.LoginParamsDto>() ||
            targetTypeOf == _typeOf<_i3.LoginParamsDto?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$LoginParams_To__i3$LoginParamsDto(
          (model as _i2.LoginParams?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.LoginResultDto>() ||
            sourceTypeOf == _typeOf<_i4.LoginResultDto?>()) &&
        (targetTypeOf == _typeOf<_i5.LoginResult>() ||
            targetTypeOf == _typeOf<_i5.LoginResult?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$LoginResultDto_To__i5$LoginResult(
          (model as _i4.LoginResultDto?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.LoginValidationDto>() ||
            sourceTypeOf == _typeOf<_i6.LoginValidationDto?>()) &&
        (targetTypeOf == _typeOf<_i7.LoginValidation>() ||
            targetTypeOf == _typeOf<_i7.LoginValidation?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$LoginValidationDto_To__i7$LoginValidation(
          (model as _i6.LoginValidationDto?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  _i3.LoginParamsDto _map__i2$LoginParams_To__i3$LoginParamsDto(
      _i2.LoginParams? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoginParams → LoginParamsDto failed because LoginParams was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoginParams, LoginParamsDto> to handle null values during mapping.');
    }
    return _i3.LoginParamsDto(
      email: model.email,
      password: model.password,
    );
  }

  _i5.LoginResult _map__i4$LoginResultDto_To__i5$LoginResult(
      _i4.LoginResultDto? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoginResultDto → LoginResult failed because LoginResultDto was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoginResultDto, LoginResult> to handle null values during mapping.');
    }
    return _i5.LoginResult(
      token: model.token,
      refreshToken: model.refreshToken,
      email: model.email,
      nickName: model.nickName,
      imagePhoto: model.imagePhoto,
    );
  }

  _i7.LoginValidation _map__i6$LoginValidationDto_To__i7$LoginValidation(
      _i6.LoginValidationDto? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoginValidationDto → LoginValidation failed because LoginValidationDto was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoginValidationDto, LoginValidation> to handle null values during mapping.');
    }
    return _i7.LoginValidation(
      email: (_i8.CommonTypeConverter.firstErrorMsg(model.email) as String?),
      password:
          (_i8.CommonTypeConverter.firstErrorMsg(model.password) as String?),
    );
  }
}
