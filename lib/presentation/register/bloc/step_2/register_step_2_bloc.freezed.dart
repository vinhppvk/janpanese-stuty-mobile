// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_step_2_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterStep2Event {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) resendOtpCode,
    required TResult Function(String email, String otpCode) verifyOtpCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? resendOtpCode,
    TResult? Function(String email, String otpCode)? verifyOtpCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? resendOtpCode,
    TResult Function(String email, String otpCode)? verifyOtpCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStep2EventResendOtpCode value)
        resendOtpCode,
    required TResult Function(RegisterStep2EventVerifyOtpCode value)
        verifyOtpCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStep2EventResendOtpCode value)? resendOtpCode,
    TResult? Function(RegisterStep2EventVerifyOtpCode value)? verifyOtpCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStep2EventResendOtpCode value)? resendOtpCode,
    TResult Function(RegisterStep2EventVerifyOtpCode value)? verifyOtpCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStep2EventCopyWith<RegisterStep2Event> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStep2EventCopyWith<$Res> {
  factory $RegisterStep2EventCopyWith(
          RegisterStep2Event value, $Res Function(RegisterStep2Event) then) =
      _$RegisterStep2EventCopyWithImpl<$Res, RegisterStep2Event>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$RegisterStep2EventCopyWithImpl<$Res, $Val extends RegisterStep2Event>
    implements $RegisterStep2EventCopyWith<$Res> {
  _$RegisterStep2EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterStep2EventResendOtpCodeImplCopyWith<$Res>
    implements $RegisterStep2EventCopyWith<$Res> {
  factory _$$RegisterStep2EventResendOtpCodeImplCopyWith(
          _$RegisterStep2EventResendOtpCodeImpl value,
          $Res Function(_$RegisterStep2EventResendOtpCodeImpl) then) =
      __$$RegisterStep2EventResendOtpCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$RegisterStep2EventResendOtpCodeImplCopyWithImpl<$Res>
    extends _$RegisterStep2EventCopyWithImpl<$Res,
        _$RegisterStep2EventResendOtpCodeImpl>
    implements _$$RegisterStep2EventResendOtpCodeImplCopyWith<$Res> {
  __$$RegisterStep2EventResendOtpCodeImplCopyWithImpl(
      _$RegisterStep2EventResendOtpCodeImpl _value,
      $Res Function(_$RegisterStep2EventResendOtpCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RegisterStep2EventResendOtpCodeImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterStep2EventResendOtpCodeImpl
    implements RegisterStep2EventResendOtpCode {
  const _$RegisterStep2EventResendOtpCodeImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterStep2Event.resendOtpCode(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStep2EventResendOtpCodeImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStep2EventResendOtpCodeImplCopyWith<
          _$RegisterStep2EventResendOtpCodeImpl>
      get copyWith => __$$RegisterStep2EventResendOtpCodeImplCopyWithImpl<
          _$RegisterStep2EventResendOtpCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) resendOtpCode,
    required TResult Function(String email, String otpCode) verifyOtpCode,
  }) {
    return resendOtpCode(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? resendOtpCode,
    TResult? Function(String email, String otpCode)? verifyOtpCode,
  }) {
    return resendOtpCode?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? resendOtpCode,
    TResult Function(String email, String otpCode)? verifyOtpCode,
    required TResult orElse(),
  }) {
    if (resendOtpCode != null) {
      return resendOtpCode(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStep2EventResendOtpCode value)
        resendOtpCode,
    required TResult Function(RegisterStep2EventVerifyOtpCode value)
        verifyOtpCode,
  }) {
    return resendOtpCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStep2EventResendOtpCode value)? resendOtpCode,
    TResult? Function(RegisterStep2EventVerifyOtpCode value)? verifyOtpCode,
  }) {
    return resendOtpCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStep2EventResendOtpCode value)? resendOtpCode,
    TResult Function(RegisterStep2EventVerifyOtpCode value)? verifyOtpCode,
    required TResult orElse(),
  }) {
    if (resendOtpCode != null) {
      return resendOtpCode(this);
    }
    return orElse();
  }
}

abstract class RegisterStep2EventResendOtpCode implements RegisterStep2Event {
  const factory RegisterStep2EventResendOtpCode(final String email) =
      _$RegisterStep2EventResendOtpCodeImpl;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$RegisterStep2EventResendOtpCodeImplCopyWith<
          _$RegisterStep2EventResendOtpCodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterStep2EventVerifyOtpCodeImplCopyWith<$Res>
    implements $RegisterStep2EventCopyWith<$Res> {
  factory _$$RegisterStep2EventVerifyOtpCodeImplCopyWith(
          _$RegisterStep2EventVerifyOtpCodeImpl value,
          $Res Function(_$RegisterStep2EventVerifyOtpCodeImpl) then) =
      __$$RegisterStep2EventVerifyOtpCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String otpCode});
}

/// @nodoc
class __$$RegisterStep2EventVerifyOtpCodeImplCopyWithImpl<$Res>
    extends _$RegisterStep2EventCopyWithImpl<$Res,
        _$RegisterStep2EventVerifyOtpCodeImpl>
    implements _$$RegisterStep2EventVerifyOtpCodeImplCopyWith<$Res> {
  __$$RegisterStep2EventVerifyOtpCodeImplCopyWithImpl(
      _$RegisterStep2EventVerifyOtpCodeImpl _value,
      $Res Function(_$RegisterStep2EventVerifyOtpCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otpCode = null,
  }) {
    return _then(_$RegisterStep2EventVerifyOtpCodeImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterStep2EventVerifyOtpCodeImpl
    implements RegisterStep2EventVerifyOtpCode {
  const _$RegisterStep2EventVerifyOtpCodeImpl(this.email, this.otpCode);

  @override
  final String email;
  @override
  final String otpCode;

  @override
  String toString() {
    return 'RegisterStep2Event.verifyOtpCode(email: $email, otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStep2EventVerifyOtpCodeImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, otpCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStep2EventVerifyOtpCodeImplCopyWith<
          _$RegisterStep2EventVerifyOtpCodeImpl>
      get copyWith => __$$RegisterStep2EventVerifyOtpCodeImplCopyWithImpl<
          _$RegisterStep2EventVerifyOtpCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) resendOtpCode,
    required TResult Function(String email, String otpCode) verifyOtpCode,
  }) {
    return verifyOtpCode(email, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? resendOtpCode,
    TResult? Function(String email, String otpCode)? verifyOtpCode,
  }) {
    return verifyOtpCode?.call(email, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? resendOtpCode,
    TResult Function(String email, String otpCode)? verifyOtpCode,
    required TResult orElse(),
  }) {
    if (verifyOtpCode != null) {
      return verifyOtpCode(email, otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStep2EventResendOtpCode value)
        resendOtpCode,
    required TResult Function(RegisterStep2EventVerifyOtpCode value)
        verifyOtpCode,
  }) {
    return verifyOtpCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStep2EventResendOtpCode value)? resendOtpCode,
    TResult? Function(RegisterStep2EventVerifyOtpCode value)? verifyOtpCode,
  }) {
    return verifyOtpCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStep2EventResendOtpCode value)? resendOtpCode,
    TResult Function(RegisterStep2EventVerifyOtpCode value)? verifyOtpCode,
    required TResult orElse(),
  }) {
    if (verifyOtpCode != null) {
      return verifyOtpCode(this);
    }
    return orElse();
  }
}

abstract class RegisterStep2EventVerifyOtpCode implements RegisterStep2Event {
  const factory RegisterStep2EventVerifyOtpCode(
          final String email, final String otpCode) =
      _$RegisterStep2EventVerifyOtpCodeImpl;

  @override
  String get email;
  String get otpCode;
  @override
  @JsonKey(ignore: true)
  _$$RegisterStep2EventVerifyOtpCodeImplCopyWith<
          _$RegisterStep2EventVerifyOtpCodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterStep2State {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResendOtpResult result) resendOtpResult,
    required TResult Function(VerifyOtpResult result) verifyOtpResult,
    required TResult Function(Failure<VerifyOtpValidation> failure)
        verifyOtpError,
    required TResult Function(Failure<void> failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResendOtpResult result)? resendOtpResult,
    TResult? Function(VerifyOtpResult result)? verifyOtpResult,
    TResult? Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult? Function(Failure<void> failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResendOtpResult result)? resendOtpResult,
    TResult Function(VerifyOtpResult result)? verifyOtpResult,
    TResult Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult Function(Failure<void> failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStep2StateInitial value) initial,
    required TResult Function(RegisterStep2StateLoading value) loading,
    required TResult Function(RegisterStep2StateResendOtpResult value)
        resendOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpResult value)
        verifyOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpError value)
        verifyOtpError,
    required TResult Function(RegisterStep2StateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStep2StateInitial value)? initial,
    TResult? Function(RegisterStep2StateLoading value)? loading,
    TResult? Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult? Function(RegisterStep2StateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStep2StateInitial value)? initial,
    TResult Function(RegisterStep2StateLoading value)? loading,
    TResult Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult Function(RegisterStep2StateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStep2StateCopyWith<$Res> {
  factory $RegisterStep2StateCopyWith(
          RegisterStep2State value, $Res Function(RegisterStep2State) then) =
      _$RegisterStep2StateCopyWithImpl<$Res, RegisterStep2State>;
}

/// @nodoc
class _$RegisterStep2StateCopyWithImpl<$Res, $Val extends RegisterStep2State>
    implements $RegisterStep2StateCopyWith<$Res> {
  _$RegisterStep2StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterStep2StateInitialImplCopyWith<$Res> {
  factory _$$RegisterStep2StateInitialImplCopyWith(
          _$RegisterStep2StateInitialImpl value,
          $Res Function(_$RegisterStep2StateInitialImpl) then) =
      __$$RegisterStep2StateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterStep2StateInitialImplCopyWithImpl<$Res>
    extends _$RegisterStep2StateCopyWithImpl<$Res,
        _$RegisterStep2StateInitialImpl>
    implements _$$RegisterStep2StateInitialImplCopyWith<$Res> {
  __$$RegisterStep2StateInitialImplCopyWithImpl(
      _$RegisterStep2StateInitialImpl _value,
      $Res Function(_$RegisterStep2StateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterStep2StateInitialImpl implements RegisterStep2StateInitial {
  const _$RegisterStep2StateInitialImpl();

  @override
  String toString() {
    return 'RegisterStep2State.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStep2StateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResendOtpResult result) resendOtpResult,
    required TResult Function(VerifyOtpResult result) verifyOtpResult,
    required TResult Function(Failure<VerifyOtpValidation> failure)
        verifyOtpError,
    required TResult Function(Failure<void> failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResendOtpResult result)? resendOtpResult,
    TResult? Function(VerifyOtpResult result)? verifyOtpResult,
    TResult? Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult? Function(Failure<void> failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResendOtpResult result)? resendOtpResult,
    TResult Function(VerifyOtpResult result)? verifyOtpResult,
    TResult Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult Function(Failure<void> failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStep2StateInitial value) initial,
    required TResult Function(RegisterStep2StateLoading value) loading,
    required TResult Function(RegisterStep2StateResendOtpResult value)
        resendOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpResult value)
        verifyOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpError value)
        verifyOtpError,
    required TResult Function(RegisterStep2StateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStep2StateInitial value)? initial,
    TResult? Function(RegisterStep2StateLoading value)? loading,
    TResult? Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult? Function(RegisterStep2StateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStep2StateInitial value)? initial,
    TResult Function(RegisterStep2StateLoading value)? loading,
    TResult Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult Function(RegisterStep2StateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RegisterStep2StateInitial implements RegisterStep2State {
  const factory RegisterStep2StateInitial() = _$RegisterStep2StateInitialImpl;
}

/// @nodoc
abstract class _$$RegisterStep2StateLoadingImplCopyWith<$Res> {
  factory _$$RegisterStep2StateLoadingImplCopyWith(
          _$RegisterStep2StateLoadingImpl value,
          $Res Function(_$RegisterStep2StateLoadingImpl) then) =
      __$$RegisterStep2StateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterStep2StateLoadingImplCopyWithImpl<$Res>
    extends _$RegisterStep2StateCopyWithImpl<$Res,
        _$RegisterStep2StateLoadingImpl>
    implements _$$RegisterStep2StateLoadingImplCopyWith<$Res> {
  __$$RegisterStep2StateLoadingImplCopyWithImpl(
      _$RegisterStep2StateLoadingImpl _value,
      $Res Function(_$RegisterStep2StateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterStep2StateLoadingImpl implements RegisterStep2StateLoading {
  const _$RegisterStep2StateLoadingImpl();

  @override
  String toString() {
    return 'RegisterStep2State.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStep2StateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResendOtpResult result) resendOtpResult,
    required TResult Function(VerifyOtpResult result) verifyOtpResult,
    required TResult Function(Failure<VerifyOtpValidation> failure)
        verifyOtpError,
    required TResult Function(Failure<void> failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResendOtpResult result)? resendOtpResult,
    TResult? Function(VerifyOtpResult result)? verifyOtpResult,
    TResult? Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult? Function(Failure<void> failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResendOtpResult result)? resendOtpResult,
    TResult Function(VerifyOtpResult result)? verifyOtpResult,
    TResult Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult Function(Failure<void> failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStep2StateInitial value) initial,
    required TResult Function(RegisterStep2StateLoading value) loading,
    required TResult Function(RegisterStep2StateResendOtpResult value)
        resendOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpResult value)
        verifyOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpError value)
        verifyOtpError,
    required TResult Function(RegisterStep2StateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStep2StateInitial value)? initial,
    TResult? Function(RegisterStep2StateLoading value)? loading,
    TResult? Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult? Function(RegisterStep2StateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStep2StateInitial value)? initial,
    TResult Function(RegisterStep2StateLoading value)? loading,
    TResult Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult Function(RegisterStep2StateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegisterStep2StateLoading implements RegisterStep2State {
  const factory RegisterStep2StateLoading() = _$RegisterStep2StateLoadingImpl;
}

/// @nodoc
abstract class _$$RegisterStep2StateResendOtpResultImplCopyWith<$Res> {
  factory _$$RegisterStep2StateResendOtpResultImplCopyWith(
          _$RegisterStep2StateResendOtpResultImpl value,
          $Res Function(_$RegisterStep2StateResendOtpResultImpl) then) =
      __$$RegisterStep2StateResendOtpResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResendOtpResult result});
}

/// @nodoc
class __$$RegisterStep2StateResendOtpResultImplCopyWithImpl<$Res>
    extends _$RegisterStep2StateCopyWithImpl<$Res,
        _$RegisterStep2StateResendOtpResultImpl>
    implements _$$RegisterStep2StateResendOtpResultImplCopyWith<$Res> {
  __$$RegisterStep2StateResendOtpResultImplCopyWithImpl(
      _$RegisterStep2StateResendOtpResultImpl _value,
      $Res Function(_$RegisterStep2StateResendOtpResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$RegisterStep2StateResendOtpResultImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResendOtpResult,
    ));
  }
}

/// @nodoc

class _$RegisterStep2StateResendOtpResultImpl
    implements RegisterStep2StateResendOtpResult {
  const _$RegisterStep2StateResendOtpResultImpl(this.result);

  @override
  final ResendOtpResult result;

  @override
  String toString() {
    return 'RegisterStep2State.resendOtpResult(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStep2StateResendOtpResultImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStep2StateResendOtpResultImplCopyWith<
          _$RegisterStep2StateResendOtpResultImpl>
      get copyWith => __$$RegisterStep2StateResendOtpResultImplCopyWithImpl<
          _$RegisterStep2StateResendOtpResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResendOtpResult result) resendOtpResult,
    required TResult Function(VerifyOtpResult result) verifyOtpResult,
    required TResult Function(Failure<VerifyOtpValidation> failure)
        verifyOtpError,
    required TResult Function(Failure<void> failure) error,
  }) {
    return resendOtpResult(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResendOtpResult result)? resendOtpResult,
    TResult? Function(VerifyOtpResult result)? verifyOtpResult,
    TResult? Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult? Function(Failure<void> failure)? error,
  }) {
    return resendOtpResult?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResendOtpResult result)? resendOtpResult,
    TResult Function(VerifyOtpResult result)? verifyOtpResult,
    TResult Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult Function(Failure<void> failure)? error,
    required TResult orElse(),
  }) {
    if (resendOtpResult != null) {
      return resendOtpResult(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStep2StateInitial value) initial,
    required TResult Function(RegisterStep2StateLoading value) loading,
    required TResult Function(RegisterStep2StateResendOtpResult value)
        resendOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpResult value)
        verifyOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpError value)
        verifyOtpError,
    required TResult Function(RegisterStep2StateError value) error,
  }) {
    return resendOtpResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStep2StateInitial value)? initial,
    TResult? Function(RegisterStep2StateLoading value)? loading,
    TResult? Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult? Function(RegisterStep2StateError value)? error,
  }) {
    return resendOtpResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStep2StateInitial value)? initial,
    TResult Function(RegisterStep2StateLoading value)? loading,
    TResult Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult Function(RegisterStep2StateError value)? error,
    required TResult orElse(),
  }) {
    if (resendOtpResult != null) {
      return resendOtpResult(this);
    }
    return orElse();
  }
}

abstract class RegisterStep2StateResendOtpResult implements RegisterStep2State {
  const factory RegisterStep2StateResendOtpResult(
      final ResendOtpResult result) = _$RegisterStep2StateResendOtpResultImpl;

  ResendOtpResult get result;
  @JsonKey(ignore: true)
  _$$RegisterStep2StateResendOtpResultImplCopyWith<
          _$RegisterStep2StateResendOtpResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterStep2StateVerifyOtpResultImplCopyWith<$Res> {
  factory _$$RegisterStep2StateVerifyOtpResultImplCopyWith(
          _$RegisterStep2StateVerifyOtpResultImpl value,
          $Res Function(_$RegisterStep2StateVerifyOtpResultImpl) then) =
      __$$RegisterStep2StateVerifyOtpResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VerifyOtpResult result});
}

/// @nodoc
class __$$RegisterStep2StateVerifyOtpResultImplCopyWithImpl<$Res>
    extends _$RegisterStep2StateCopyWithImpl<$Res,
        _$RegisterStep2StateVerifyOtpResultImpl>
    implements _$$RegisterStep2StateVerifyOtpResultImplCopyWith<$Res> {
  __$$RegisterStep2StateVerifyOtpResultImplCopyWithImpl(
      _$RegisterStep2StateVerifyOtpResultImpl _value,
      $Res Function(_$RegisterStep2StateVerifyOtpResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$RegisterStep2StateVerifyOtpResultImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResult,
    ));
  }
}

/// @nodoc

class _$RegisterStep2StateVerifyOtpResultImpl
    implements RegisterStep2StateVerifyOtpResult {
  const _$RegisterStep2StateVerifyOtpResultImpl(this.result);

  @override
  final VerifyOtpResult result;

  @override
  String toString() {
    return 'RegisterStep2State.verifyOtpResult(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStep2StateVerifyOtpResultImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStep2StateVerifyOtpResultImplCopyWith<
          _$RegisterStep2StateVerifyOtpResultImpl>
      get copyWith => __$$RegisterStep2StateVerifyOtpResultImplCopyWithImpl<
          _$RegisterStep2StateVerifyOtpResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResendOtpResult result) resendOtpResult,
    required TResult Function(VerifyOtpResult result) verifyOtpResult,
    required TResult Function(Failure<VerifyOtpValidation> failure)
        verifyOtpError,
    required TResult Function(Failure<void> failure) error,
  }) {
    return verifyOtpResult(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResendOtpResult result)? resendOtpResult,
    TResult? Function(VerifyOtpResult result)? verifyOtpResult,
    TResult? Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult? Function(Failure<void> failure)? error,
  }) {
    return verifyOtpResult?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResendOtpResult result)? resendOtpResult,
    TResult Function(VerifyOtpResult result)? verifyOtpResult,
    TResult Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult Function(Failure<void> failure)? error,
    required TResult orElse(),
  }) {
    if (verifyOtpResult != null) {
      return verifyOtpResult(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStep2StateInitial value) initial,
    required TResult Function(RegisterStep2StateLoading value) loading,
    required TResult Function(RegisterStep2StateResendOtpResult value)
        resendOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpResult value)
        verifyOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpError value)
        verifyOtpError,
    required TResult Function(RegisterStep2StateError value) error,
  }) {
    return verifyOtpResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStep2StateInitial value)? initial,
    TResult? Function(RegisterStep2StateLoading value)? loading,
    TResult? Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult? Function(RegisterStep2StateError value)? error,
  }) {
    return verifyOtpResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStep2StateInitial value)? initial,
    TResult Function(RegisterStep2StateLoading value)? loading,
    TResult Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult Function(RegisterStep2StateError value)? error,
    required TResult orElse(),
  }) {
    if (verifyOtpResult != null) {
      return verifyOtpResult(this);
    }
    return orElse();
  }
}

abstract class RegisterStep2StateVerifyOtpResult implements RegisterStep2State {
  const factory RegisterStep2StateVerifyOtpResult(
      final VerifyOtpResult result) = _$RegisterStep2StateVerifyOtpResultImpl;

  VerifyOtpResult get result;
  @JsonKey(ignore: true)
  _$$RegisterStep2StateVerifyOtpResultImplCopyWith<
          _$RegisterStep2StateVerifyOtpResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterStep2StateVerifyOtpErrorImplCopyWith<$Res> {
  factory _$$RegisterStep2StateVerifyOtpErrorImplCopyWith(
          _$RegisterStep2StateVerifyOtpErrorImpl value,
          $Res Function(_$RegisterStep2StateVerifyOtpErrorImpl) then) =
      __$$RegisterStep2StateVerifyOtpErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure<VerifyOtpValidation> failure});

  $FailureCopyWith<VerifyOtpValidation, $Res> get failure;
}

/// @nodoc
class __$$RegisterStep2StateVerifyOtpErrorImplCopyWithImpl<$Res>
    extends _$RegisterStep2StateCopyWithImpl<$Res,
        _$RegisterStep2StateVerifyOtpErrorImpl>
    implements _$$RegisterStep2StateVerifyOtpErrorImplCopyWith<$Res> {
  __$$RegisterStep2StateVerifyOtpErrorImplCopyWithImpl(
      _$RegisterStep2StateVerifyOtpErrorImpl _value,
      $Res Function(_$RegisterStep2StateVerifyOtpErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$RegisterStep2StateVerifyOtpErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure<VerifyOtpValidation>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<VerifyOtpValidation, $Res> get failure {
    return $FailureCopyWith<VerifyOtpValidation, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$RegisterStep2StateVerifyOtpErrorImpl
    implements RegisterStep2StateVerifyOtpError {
  const _$RegisterStep2StateVerifyOtpErrorImpl(this.failure);

  @override
  final Failure<VerifyOtpValidation> failure;

  @override
  String toString() {
    return 'RegisterStep2State.verifyOtpError(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStep2StateVerifyOtpErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStep2StateVerifyOtpErrorImplCopyWith<
          _$RegisterStep2StateVerifyOtpErrorImpl>
      get copyWith => __$$RegisterStep2StateVerifyOtpErrorImplCopyWithImpl<
          _$RegisterStep2StateVerifyOtpErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResendOtpResult result) resendOtpResult,
    required TResult Function(VerifyOtpResult result) verifyOtpResult,
    required TResult Function(Failure<VerifyOtpValidation> failure)
        verifyOtpError,
    required TResult Function(Failure<void> failure) error,
  }) {
    return verifyOtpError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResendOtpResult result)? resendOtpResult,
    TResult? Function(VerifyOtpResult result)? verifyOtpResult,
    TResult? Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult? Function(Failure<void> failure)? error,
  }) {
    return verifyOtpError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResendOtpResult result)? resendOtpResult,
    TResult Function(VerifyOtpResult result)? verifyOtpResult,
    TResult Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult Function(Failure<void> failure)? error,
    required TResult orElse(),
  }) {
    if (verifyOtpError != null) {
      return verifyOtpError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStep2StateInitial value) initial,
    required TResult Function(RegisterStep2StateLoading value) loading,
    required TResult Function(RegisterStep2StateResendOtpResult value)
        resendOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpResult value)
        verifyOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpError value)
        verifyOtpError,
    required TResult Function(RegisterStep2StateError value) error,
  }) {
    return verifyOtpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStep2StateInitial value)? initial,
    TResult? Function(RegisterStep2StateLoading value)? loading,
    TResult? Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult? Function(RegisterStep2StateError value)? error,
  }) {
    return verifyOtpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStep2StateInitial value)? initial,
    TResult Function(RegisterStep2StateLoading value)? loading,
    TResult Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult Function(RegisterStep2StateError value)? error,
    required TResult orElse(),
  }) {
    if (verifyOtpError != null) {
      return verifyOtpError(this);
    }
    return orElse();
  }
}

abstract class RegisterStep2StateVerifyOtpError implements RegisterStep2State {
  const factory RegisterStep2StateVerifyOtpError(
          final Failure<VerifyOtpValidation> failure) =
      _$RegisterStep2StateVerifyOtpErrorImpl;

  Failure<VerifyOtpValidation> get failure;
  @JsonKey(ignore: true)
  _$$RegisterStep2StateVerifyOtpErrorImplCopyWith<
          _$RegisterStep2StateVerifyOtpErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterStep2StateErrorImplCopyWith<$Res> {
  factory _$$RegisterStep2StateErrorImplCopyWith(
          _$RegisterStep2StateErrorImpl value,
          $Res Function(_$RegisterStep2StateErrorImpl) then) =
      __$$RegisterStep2StateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure<void> failure});

  $FailureCopyWith<void, $Res> get failure;
}

/// @nodoc
class __$$RegisterStep2StateErrorImplCopyWithImpl<$Res>
    extends _$RegisterStep2StateCopyWithImpl<$Res,
        _$RegisterStep2StateErrorImpl>
    implements _$$RegisterStep2StateErrorImplCopyWith<$Res> {
  __$$RegisterStep2StateErrorImplCopyWithImpl(
      _$RegisterStep2StateErrorImpl _value,
      $Res Function(_$RegisterStep2StateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$RegisterStep2StateErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure<void>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<void, $Res> get failure {
    return $FailureCopyWith<void, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$RegisterStep2StateErrorImpl implements RegisterStep2StateError {
  const _$RegisterStep2StateErrorImpl(this.failure);

  @override
  final Failure<void> failure;

  @override
  String toString() {
    return 'RegisterStep2State.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStep2StateErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStep2StateErrorImplCopyWith<_$RegisterStep2StateErrorImpl>
      get copyWith => __$$RegisterStep2StateErrorImplCopyWithImpl<
          _$RegisterStep2StateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResendOtpResult result) resendOtpResult,
    required TResult Function(VerifyOtpResult result) verifyOtpResult,
    required TResult Function(Failure<VerifyOtpValidation> failure)
        verifyOtpError,
    required TResult Function(Failure<void> failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResendOtpResult result)? resendOtpResult,
    TResult? Function(VerifyOtpResult result)? verifyOtpResult,
    TResult? Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult? Function(Failure<void> failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResendOtpResult result)? resendOtpResult,
    TResult Function(VerifyOtpResult result)? verifyOtpResult,
    TResult Function(Failure<VerifyOtpValidation> failure)? verifyOtpError,
    TResult Function(Failure<void> failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStep2StateInitial value) initial,
    required TResult Function(RegisterStep2StateLoading value) loading,
    required TResult Function(RegisterStep2StateResendOtpResult value)
        resendOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpResult value)
        verifyOtpResult,
    required TResult Function(RegisterStep2StateVerifyOtpError value)
        verifyOtpError,
    required TResult Function(RegisterStep2StateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStep2StateInitial value)? initial,
    TResult? Function(RegisterStep2StateLoading value)? loading,
    TResult? Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult? Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult? Function(RegisterStep2StateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStep2StateInitial value)? initial,
    TResult Function(RegisterStep2StateLoading value)? loading,
    TResult Function(RegisterStep2StateResendOtpResult value)? resendOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpResult value)? verifyOtpResult,
    TResult Function(RegisterStep2StateVerifyOtpError value)? verifyOtpError,
    TResult Function(RegisterStep2StateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterStep2StateError implements RegisterStep2State {
  const factory RegisterStep2StateError(final Failure<void> failure) =
      _$RegisterStep2StateErrorImpl;

  Failure<void> get failure;
  @JsonKey(ignore: true)
  _$$RegisterStep2StateErrorImplCopyWith<_$RegisterStep2StateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
