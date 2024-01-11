// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExampleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleEventCopyWith<$Res> {
  factory $ExampleEventCopyWith(
          ExampleEvent value, $Res Function(ExampleEvent) then) =
      _$ExampleEventCopyWithImpl<$Res, ExampleEvent>;
}

/// @nodoc
class _$ExampleEventCopyWithImpl<$Res, $Val extends ExampleEvent>
    implements $ExampleEventCopyWith<$Res> {
  _$ExampleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExampleStartedImplCopyWith<$Res> {
  factory _$$ExampleStartedImplCopyWith(_$ExampleStartedImpl value,
          $Res Function(_$ExampleStartedImpl) then) =
      __$$ExampleStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExampleStartedImplCopyWithImpl<$Res>
    extends _$ExampleEventCopyWithImpl<$Res, _$ExampleStartedImpl>
    implements _$$ExampleStartedImplCopyWith<$Res> {
  __$$ExampleStartedImplCopyWithImpl(
      _$ExampleStartedImpl _value, $Res Function(_$ExampleStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExampleStartedImpl implements ExampleStarted {
  const _$ExampleStartedImpl();

  @override
  String toString() {
    return 'ExampleEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExampleStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ExampleStarted implements ExampleEvent {
  const factory ExampleStarted() = _$ExampleStartedImpl;
}

/// @nodoc
mixin _$ExampleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExampleUserDto> response) loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExampleUserDto> response)? loaded,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExampleUserDto> response)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleInitial value) initial,
    required TResult Function(ExampleLoading value) loading,
    required TResult Function(ExampleLoaded value) loaded,
    required TResult Function(ExampleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleInitial value)? initial,
    TResult? Function(ExampleLoading value)? loading,
    TResult? Function(ExampleLoaded value)? loaded,
    TResult? Function(ExampleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleInitial value)? initial,
    TResult Function(ExampleLoading value)? loading,
    TResult Function(ExampleLoaded value)? loaded,
    TResult Function(ExampleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleStateCopyWith<$Res> {
  factory $ExampleStateCopyWith(
          ExampleState value, $Res Function(ExampleState) then) =
      _$ExampleStateCopyWithImpl<$Res, ExampleState>;
}

/// @nodoc
class _$ExampleStateCopyWithImpl<$Res, $Val extends ExampleState>
    implements $ExampleStateCopyWith<$Res> {
  _$ExampleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExampleInitialImplCopyWith<$Res> {
  factory _$$ExampleInitialImplCopyWith(_$ExampleInitialImpl value,
          $Res Function(_$ExampleInitialImpl) then) =
      __$$ExampleInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExampleInitialImplCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleInitialImpl>
    implements _$$ExampleInitialImplCopyWith<$Res> {
  __$$ExampleInitialImplCopyWithImpl(
      _$ExampleInitialImpl _value, $Res Function(_$ExampleInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExampleInitialImpl implements ExampleInitial {
  const _$ExampleInitialImpl();

  @override
  String toString() {
    return 'ExampleState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExampleInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExampleUserDto> response) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExampleUserDto> response)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExampleUserDto> response)? loaded,
    TResult Function(Failure failure)? error,
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
    required TResult Function(ExampleInitial value) initial,
    required TResult Function(ExampleLoading value) loading,
    required TResult Function(ExampleLoaded value) loaded,
    required TResult Function(ExampleError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleInitial value)? initial,
    TResult? Function(ExampleLoading value)? loading,
    TResult? Function(ExampleLoaded value)? loaded,
    TResult? Function(ExampleError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleInitial value)? initial,
    TResult Function(ExampleLoading value)? loading,
    TResult Function(ExampleLoaded value)? loaded,
    TResult Function(ExampleError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ExampleInitial implements ExampleState {
  const factory ExampleInitial() = _$ExampleInitialImpl;
}

/// @nodoc
abstract class _$$ExampleLoadingImplCopyWith<$Res> {
  factory _$$ExampleLoadingImplCopyWith(_$ExampleLoadingImpl value,
          $Res Function(_$ExampleLoadingImpl) then) =
      __$$ExampleLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExampleLoadingImplCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleLoadingImpl>
    implements _$$ExampleLoadingImplCopyWith<$Res> {
  __$$ExampleLoadingImplCopyWithImpl(
      _$ExampleLoadingImpl _value, $Res Function(_$ExampleLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExampleLoadingImpl implements ExampleLoading {
  const _$ExampleLoadingImpl();

  @override
  String toString() {
    return 'ExampleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExampleLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExampleUserDto> response) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExampleUserDto> response)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExampleUserDto> response)? loaded,
    TResult Function(Failure failure)? error,
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
    required TResult Function(ExampleInitial value) initial,
    required TResult Function(ExampleLoading value) loading,
    required TResult Function(ExampleLoaded value) loaded,
    required TResult Function(ExampleError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleInitial value)? initial,
    TResult? Function(ExampleLoading value)? loading,
    TResult? Function(ExampleLoaded value)? loaded,
    TResult? Function(ExampleError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleInitial value)? initial,
    TResult Function(ExampleLoading value)? loading,
    TResult Function(ExampleLoaded value)? loaded,
    TResult Function(ExampleError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExampleLoading implements ExampleState {
  const factory ExampleLoading() = _$ExampleLoadingImpl;
}

/// @nodoc
abstract class _$$ExampleLoadedImplCopyWith<$Res> {
  factory _$$ExampleLoadedImplCopyWith(
          _$ExampleLoadedImpl value, $Res Function(_$ExampleLoadedImpl) then) =
      __$$ExampleLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExampleUserDto> response});
}

/// @nodoc
class __$$ExampleLoadedImplCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleLoadedImpl>
    implements _$$ExampleLoadedImplCopyWith<$Res> {
  __$$ExampleLoadedImplCopyWithImpl(
      _$ExampleLoadedImpl _value, $Res Function(_$ExampleLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$ExampleLoadedImpl(
      null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<ExampleUserDto>,
    ));
  }
}

/// @nodoc

class _$ExampleLoadedImpl implements ExampleLoaded {
  const _$ExampleLoadedImpl(final List<ExampleUserDto> response)
      : _response = response;

  final List<ExampleUserDto> _response;
  @override
  List<ExampleUserDto> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'ExampleState.loaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleLoadedImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleLoadedImplCopyWith<_$ExampleLoadedImpl> get copyWith =>
      __$$ExampleLoadedImplCopyWithImpl<_$ExampleLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExampleUserDto> response) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExampleUserDto> response)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExampleUserDto> response)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleInitial value) initial,
    required TResult Function(ExampleLoading value) loading,
    required TResult Function(ExampleLoaded value) loaded,
    required TResult Function(ExampleError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleInitial value)? initial,
    TResult? Function(ExampleLoading value)? loading,
    TResult? Function(ExampleLoaded value)? loaded,
    TResult? Function(ExampleError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleInitial value)? initial,
    TResult Function(ExampleLoading value)? loading,
    TResult Function(ExampleLoaded value)? loaded,
    TResult Function(ExampleError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ExampleLoaded implements ExampleState {
  const factory ExampleLoaded(final List<ExampleUserDto> response) =
      _$ExampleLoadedImpl;

  List<ExampleUserDto> get response;
  @JsonKey(ignore: true)
  _$$ExampleLoadedImplCopyWith<_$ExampleLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExampleErrorImplCopyWith<$Res> {
  factory _$$ExampleErrorImplCopyWith(
          _$ExampleErrorImpl value, $Res Function(_$ExampleErrorImpl) then) =
      __$$ExampleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ExampleErrorImplCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleErrorImpl>
    implements _$$ExampleErrorImplCopyWith<$Res> {
  __$$ExampleErrorImplCopyWithImpl(
      _$ExampleErrorImpl _value, $Res Function(_$ExampleErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ExampleErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ExampleErrorImpl implements ExampleError {
  const _$ExampleErrorImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ExampleState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleErrorImplCopyWith<_$ExampleErrorImpl> get copyWith =>
      __$$ExampleErrorImplCopyWithImpl<_$ExampleErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExampleUserDto> response) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExampleUserDto> response)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExampleUserDto> response)? loaded,
    TResult Function(Failure failure)? error,
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
    required TResult Function(ExampleInitial value) initial,
    required TResult Function(ExampleLoading value) loading,
    required TResult Function(ExampleLoaded value) loaded,
    required TResult Function(ExampleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleInitial value)? initial,
    TResult? Function(ExampleLoading value)? loading,
    TResult? Function(ExampleLoaded value)? loaded,
    TResult? Function(ExampleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleInitial value)? initial,
    TResult Function(ExampleLoading value)? loading,
    TResult Function(ExampleLoaded value)? loaded,
    TResult Function(ExampleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExampleError implements ExampleState {
  const factory ExampleError(final Failure failure) = _$ExampleErrorImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ExampleErrorImplCopyWith<_$ExampleErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
