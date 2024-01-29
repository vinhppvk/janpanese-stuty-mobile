// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../dto/enum/gender_dto.dart' as _i7;
import '../../dto/request/register/register_user_params_dto.dart' as _i3;
import '../../dto/validation/register/register_user_validation_dto.dart' as _i4;
import '../../entity/enum/gender.dart' as _i6;
import '../../entity/request/register/register_user_params.dart' as _i2;
import '../../entity/validation/register/register_user_validation.dart' as _i5;
import '../utils/common_type_converter.dart' as _i9;
import 'register_user_mapper.dart' as _i8;

/// {@template package:japanese_study/data/model/mapper/register/register_user_mapper.dart}
/// Available mappings:
/// - `RegisterUserParams` → `RegisterUserParamsDto`.
/// - `RegisterUserValidationDto` → `RegisterUserValidation`.
/// - `Gender` → `GenderDto`.
/// {@endtemplate}
class $RegisterUserMappr implements _i1.AutoMapprInterface {
  const $RegisterUserMappr();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:japanese_study/data/model/mapper/register/register_user_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.RegisterUserParams>() ||
            sourceTypeOf == _typeOf<_i2.RegisterUserParams?>()) &&
        (targetTypeOf == _typeOf<_i3.RegisterUserParamsDto>() ||
            targetTypeOf == _typeOf<_i3.RegisterUserParamsDto?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.RegisterUserValidationDto>() ||
            sourceTypeOf == _typeOf<_i4.RegisterUserValidationDto?>()) &&
        (targetTypeOf == _typeOf<_i5.RegisterUserValidation>() ||
            targetTypeOf == _typeOf<_i5.RegisterUserValidation?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.Gender>() ||
            sourceTypeOf == _typeOf<_i6.Gender?>()) &&
        (targetTypeOf == _typeOf<_i7.GenderDto>() ||
            targetTypeOf == _typeOf<_i7.GenderDto?>())) {
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
  /// {@macro package:japanese_study/data/model/mapper/register/register_user_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/register_user_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/register_user_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/register_user_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/register_user_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/register_user_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/register_user_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/register_user_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.RegisterUserParams>() ||
            sourceTypeOf == _typeOf<_i2.RegisterUserParams?>()) &&
        (targetTypeOf == _typeOf<_i3.RegisterUserParamsDto>() ||
            targetTypeOf == _typeOf<_i3.RegisterUserParamsDto?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$RegisterUserParams_To__i3$RegisterUserParamsDto(
          (model as _i2.RegisterUserParams?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.RegisterUserValidationDto>() ||
            sourceTypeOf == _typeOf<_i4.RegisterUserValidationDto?>()) &&
        (targetTypeOf == _typeOf<_i5.RegisterUserValidation>() ||
            targetTypeOf == _typeOf<_i5.RegisterUserValidation?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$RegisterUserValidationDto_To__i5$RegisterUserValidation(
          (model as _i4.RegisterUserValidationDto?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.Gender>() ||
            sourceTypeOf == _typeOf<_i6.Gender?>()) &&
        (targetTypeOf == _typeOf<_i7.GenderDto>() ||
            targetTypeOf == _typeOf<_i7.GenderDto?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$Gender_To__i7$GenderDto((model as _i6.Gender?))
          as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  _i3.RegisterUserParamsDto
      _map__i2$RegisterUserParams_To__i3$RegisterUserParamsDto(
          _i2.RegisterUserParams? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping RegisterUserParams → RegisterUserParamsDto failed because RegisterUserParams was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<RegisterUserParams, RegisterUserParamsDto> to handle null values during mapping.');
    }
    return _i3.RegisterUserParamsDto(
      email: model.email,
      nickName: model.nickName,
      sex: _map__i6$Gender_To__i7$GenderDto_Nullable(model.sex),
      birthday:
          (_i8.RegisterUserMappr.mapToServerDate(model.birthday) as String?),
      phoneNumber: model.phoneNumber,
      nationality: model.nationality,
      password: model.password,
      imagePhoto: model.imagePhoto,
      confirmPassword: model.confirmPassword,
    );
  }

  _i5.RegisterUserValidation
      _map__i4$RegisterUserValidationDto_To__i5$RegisterUserValidation(
          _i4.RegisterUserValidationDto? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping RegisterUserValidationDto → RegisterUserValidation failed because RegisterUserValidationDto was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<RegisterUserValidationDto, RegisterUserValidation> to handle null values during mapping.');
    }
    return _i5.RegisterUserValidation(
      email: (_i9.CommonTypeConverter.firstErrorMsg(model.email) as String?),
      nickName:
          (_i9.CommonTypeConverter.firstErrorMsg(model.nickName) as String?),
      sex: (_i9.CommonTypeConverter.firstErrorMsg(model.sex) as String?),
      birthday:
          (_i9.CommonTypeConverter.firstErrorMsg(model.birthday) as String?),
      phoneNumber:
          (_i9.CommonTypeConverter.firstErrorMsg(model.phoneNumber) as String?),
      nationality:
          (_i9.CommonTypeConverter.firstErrorMsg(model.nationality) as String?),
      password:
          (_i9.CommonTypeConverter.firstErrorMsg(model.password) as String?),
      imagePhoto:
          (_i9.CommonTypeConverter.firstErrorMsg(model.imagePhoto) as String?),
      confirmPassword:
          (_i9.CommonTypeConverter.firstErrorMsg(model.confirmPassword)
              as String?),
    );
  }

  _i7.GenderDto _map__i6$Gender_To__i7$GenderDto(_i6.Gender? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping Gender → GenderDto failed because Gender was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<Gender, GenderDto> to handle null values during mapping.');
    }
    return _i7.GenderDto.values.firstWhere((x) => x.name == model.name);
  }

  _i7.GenderDto? _map__i6$Gender_To__i7$GenderDto_Nullable(_i6.Gender? input) {
    final model = input;
    if (model == null) {
      return null;
    }
    return _i7.GenderDto.values.firstWhere((x) => x.name == model.name);
  }
}
