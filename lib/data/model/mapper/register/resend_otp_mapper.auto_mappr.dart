// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../dto/request/register/resend_otp_params_dto.dart' as _i3;
import '../../dto/response/register/resend_otp_result_dto.dart' as _i4;
import '../../entity/request/register/resend_otp_params.dart' as _i2;
import '../../entity/response/register/resend_otp_result.dart' as _i5;

/// {@template package:japanese_study/data/model/mapper/register/resend_otp_mapper.dart}
/// Available mappings:
/// - `ResendOtpParams` → `ResendOtpParamsDto`.
/// - `ResendOtpResultDto` → `ResendOtpResult`.
/// {@endtemplate}
class $ResendOtpMappr implements _i1.AutoMapprInterface {
  const $ResendOtpMappr();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:japanese_study/data/model/mapper/register/resend_otp_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.ResendOtpParams>() ||
            sourceTypeOf == _typeOf<_i2.ResendOtpParams?>()) &&
        (targetTypeOf == _typeOf<_i3.ResendOtpParamsDto>() ||
            targetTypeOf == _typeOf<_i3.ResendOtpParamsDto?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.ResendOtpResultDto>() ||
            sourceTypeOf == _typeOf<_i4.ResendOtpResultDto?>()) &&
        (targetTypeOf == _typeOf<_i5.ResendOtpResult>() ||
            targetTypeOf == _typeOf<_i5.ResendOtpResult?>())) {
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
  /// {@macro package:japanese_study/data/model/mapper/register/resend_otp_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/resend_otp_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/resend_otp_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/resend_otp_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/resend_otp_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/resend_otp_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/resend_otp_mapper.dart}
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
  /// {@macro package:japanese_study/data/model/mapper/register/resend_otp_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.ResendOtpParams>() ||
            sourceTypeOf == _typeOf<_i2.ResendOtpParams?>()) &&
        (targetTypeOf == _typeOf<_i3.ResendOtpParamsDto>() ||
            targetTypeOf == _typeOf<_i3.ResendOtpParamsDto?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$ResendOtpParams_To__i3$ResendOtpParamsDto(
          (model as _i2.ResendOtpParams?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.ResendOtpResultDto>() ||
            sourceTypeOf == _typeOf<_i4.ResendOtpResultDto?>()) &&
        (targetTypeOf == _typeOf<_i5.ResendOtpResult>() ||
            targetTypeOf == _typeOf<_i5.ResendOtpResult?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$ResendOtpResultDto_To__i5$ResendOtpResult(
          (model as _i4.ResendOtpResultDto?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  _i3.ResendOtpParamsDto _map__i2$ResendOtpParams_To__i3$ResendOtpParamsDto(
      _i2.ResendOtpParams? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ResendOtpParams → ResendOtpParamsDto failed because ResendOtpParams was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ResendOtpParams, ResendOtpParamsDto> to handle null values during mapping.');
    }
    return _i3.ResendOtpParamsDto(email: model.email);
  }

  _i5.ResendOtpResult _map__i4$ResendOtpResultDto_To__i5$ResendOtpResult(
      _i4.ResendOtpResultDto? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ResendOtpResultDto → ResendOtpResult failed because ResendOtpResultDto was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ResendOtpResultDto, ResendOtpResult> to handle null values during mapping.');
    }
    return _i5.ResendOtpResult(email: model.email ?? r'');
  }
}
