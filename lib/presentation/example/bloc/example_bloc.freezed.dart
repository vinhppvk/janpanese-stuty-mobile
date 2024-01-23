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
    required TResult Function(ExampleEventStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleEventStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleEventStarted value)? started,
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
abstract class _$$ExampleEventStartedImplCopyWith<$Res> {
  factory _$$ExampleEventStartedImplCopyWith(_$ExampleEventStartedImpl value,
          $Res Function(_$ExampleEventStartedImpl) then) =
      __$$ExampleEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExampleEventStartedImplCopyWithImpl<$Res>
    extends _$ExampleEventCopyWithImpl<$Res, _$ExampleEventStartedImpl>
    implements _$$ExampleEventStartedImplCopyWith<$Res> {
  __$$ExampleEventStartedImplCopyWithImpl(_$ExampleEventStartedImpl _value,
      $Res Function(_$ExampleEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExampleEventStartedImpl implements ExampleEventStarted {
  const _$ExampleEventStartedImpl();

  @override
  String toString() {
    return 'ExampleEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleEventStartedImpl);
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
    required TResult Function(ExampleEventStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleEventStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleEventStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ExampleEventStarted implements ExampleEvent {
  const factory ExampleEventStarted() = _$ExampleEventStartedImpl;
}

/// @nodoc
mixin _$ExampleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExampleUser> response) loaded,
    required TResult Function(Failure<void> failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExampleUser> response)? loaded,
    TResult? Function(Failure<void> failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExampleUser> response)? loaded,
    TResult Function(Failure<void> failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleStateInitial value) initial,
    required TResult Function(ExampleStateLoading value) loading,
    required TResult Function(ExampleStateLoaded value) loaded,
    required TResult Function(ExampleStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleStateInitial value)? initial,
    TResult? Function(ExampleStateLoading value)? loading,
    TResult? Function(ExampleStateLoaded value)? loaded,
    TResult? Function(ExampleStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleStateInitial value)? initial,
    TResult Function(ExampleStateLoading value)? loading,
    TResult Function(ExampleStateLoaded value)? loaded,
    TResult Function(ExampleStateError value)? error,
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
abstract class _$$ExampleStateInitialImplCopyWith<$Res> {
  factory _$$ExampleStateInitialImplCopyWith(_$ExampleStateInitialImpl value,
          $Res Function(_$ExampleStateInitialImpl) then) =
      __$$ExampleStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExampleStateInitialImplCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleStateInitialImpl>
    implements _$$ExampleStateInitialImplCopyWith<$Res> {
  __$$ExampleStateInitialImplCopyWithImpl(_$ExampleStateInitialImpl _value,
      $Res Function(_$ExampleStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExampleStateInitialImpl implements ExampleStateInitial {
  const _$ExampleStateInitialImpl();

  @override
  String toString() {
    return 'ExampleState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExampleUser> response) loaded,
    required TResult Function(Failure<void> failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExampleUser> response)? loaded,
    TResult? Function(Failure<void> failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExampleUser> response)? loaded,
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
    required TResult Function(ExampleStateInitial value) initial,
    required TResult Function(ExampleStateLoading value) loading,
    required TResult Function(ExampleStateLoaded value) loaded,
    required TResult Function(ExampleStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleStateInitial value)? initial,
    TResult? Function(ExampleStateLoading value)? loading,
    TResult? Function(ExampleStateLoaded value)? loaded,
    TResult? Function(ExampleStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleStateInitial value)? initial,
    TResult Function(ExampleStateLoading value)? loading,
    TResult Function(ExampleStateLoaded value)? loaded,
    TResult Function(ExampleStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ExampleStateInitial implements ExampleState {
  const factory ExampleStateInitial() = _$ExampleStateInitialImpl;
}

/// @nodoc
abstract class _$$ExampleStateLoadingImplCopyWith<$Res> {
  factory _$$ExampleStateLoadingImplCopyWith(_$ExampleStateLoadingImpl value,
          $Res Function(_$ExampleStateLoadingImpl) then) =
      __$$ExampleStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExampleStateLoadingImplCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleStateLoadingImpl>
    implements _$$ExampleStateLoadingImplCopyWith<$Res> {
  __$$ExampleStateLoadingImplCopyWithImpl(_$ExampleStateLoadingImpl _value,
      $Res Function(_$ExampleStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExampleStateLoadingImpl implements ExampleStateLoading {
  const _$ExampleStateLoadingImpl();

  @override
  String toString() {
    return 'ExampleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExampleUser> response) loaded,
    required TResult Function(Failure<void> failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExampleUser> response)? loaded,
    TResult? Function(Failure<void> failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExampleUser> response)? loaded,
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
    required TResult Function(ExampleStateInitial value) initial,
    required TResult Function(ExampleStateLoading value) loading,
    required TResult Function(ExampleStateLoaded value) loaded,
    required TResult Function(ExampleStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleStateInitial value)? initial,
    TResult? Function(ExampleStateLoading value)? loading,
    TResult? Function(ExampleStateLoaded value)? loaded,
    TResult? Function(ExampleStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleStateInitial value)? initial,
    TResult Function(ExampleStateLoading value)? loading,
    TResult Function(ExampleStateLoaded value)? loaded,
    TResult Function(ExampleStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExampleStateLoading implements ExampleState {
  const factory ExampleStateLoading() = _$ExampleStateLoadingImpl;
}

/// @nodoc
abstract class _$$ExampleStateLoadedImplCopyWith<$Res> {
  factory _$$ExampleStateLoadedImplCopyWith(_$ExampleStateLoadedImpl value,
          $Res Function(_$ExampleStateLoadedImpl) then) =
      __$$ExampleStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExampleUser> response});
}

/// @nodoc
class __$$ExampleStateLoadedImplCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleStateLoadedImpl>
    implements _$$ExampleStateLoadedImplCopyWith<$Res> {
  __$$ExampleStateLoadedImplCopyWithImpl(_$ExampleStateLoadedImpl _value,
      $Res Function(_$ExampleStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$ExampleStateLoadedImpl(
      null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<ExampleUser>,
    ));
  }
}

/// @nodoc

class _$ExampleStateLoadedImpl implements ExampleStateLoaded {
  const _$ExampleStateLoadedImpl(final List<ExampleUser> response)
      : _response = response;

  final List<ExampleUser> _response;
  @override
  List<ExampleUser> get response {
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
            other is _$ExampleStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleStateLoadedImplCopyWith<_$ExampleStateLoadedImpl> get copyWith =>
      __$$ExampleStateLoadedImplCopyWithImpl<_$ExampleStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExampleUser> response) loaded,
    required TResult Function(Failure<void> failure) error,
  }) {
    return loaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExampleUser> response)? loaded,
    TResult? Function(Failure<void> failure)? error,
  }) {
    return loaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExampleUser> response)? loaded,
    TResult Function(Failure<void> failure)? error,
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
    required TResult Function(ExampleStateInitial value) initial,
    required TResult Function(ExampleStateLoading value) loading,
    required TResult Function(ExampleStateLoaded value) loaded,
    required TResult Function(ExampleStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleStateInitial value)? initial,
    TResult? Function(ExampleStateLoading value)? loading,
    TResult? Function(ExampleStateLoaded value)? loaded,
    TResult? Function(ExampleStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleStateInitial value)? initial,
    TResult Function(ExampleStateLoading value)? loading,
    TResult Function(ExampleStateLoaded value)? loaded,
    TResult Function(ExampleStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ExampleStateLoaded implements ExampleState {
  const factory ExampleStateLoaded(final List<ExampleUser> response) =
      _$ExampleStateLoadedImpl;

  List<ExampleUser> get response;
  @JsonKey(ignore: true)
  _$$ExampleStateLoadedImplCopyWith<_$ExampleStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExampleStateErrorImplCopyWith<$Res> {
  factory _$$ExampleStateErrorImplCopyWith(_$ExampleStateErrorImpl value,
          $Res Function(_$ExampleStateErrorImpl) then) =
      __$$ExampleStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure<void> failure});

  $FailureCopyWith<void, $Res> get failure;
}

/// @nodoc
class __$$ExampleStateErrorImplCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleStateErrorImpl>
    implements _$$ExampleStateErrorImplCopyWith<$Res> {
  __$$ExampleStateErrorImplCopyWithImpl(_$ExampleStateErrorImpl _value,
      $Res Function(_$ExampleStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ExampleStateErrorImpl(
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

class _$ExampleStateErrorImpl implements ExampleStateError {
  const _$ExampleStateErrorImpl(this.failure);

  @override
  final Failure<void> failure;

  @override
  String toString() {
    return 'ExampleState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleStateErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleStateErrorImplCopyWith<_$ExampleStateErrorImpl> get copyWith =>
      __$$ExampleStateErrorImplCopyWithImpl<_$ExampleStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExampleUser> response) loaded,
    required TResult Function(Failure<void> failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExampleUser> response)? loaded,
    TResult? Function(Failure<void> failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExampleUser> response)? loaded,
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
    required TResult Function(ExampleStateInitial value) initial,
    required TResult Function(ExampleStateLoading value) loading,
    required TResult Function(ExampleStateLoaded value) loaded,
    required TResult Function(ExampleStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleStateInitial value)? initial,
    TResult? Function(ExampleStateLoading value)? loading,
    TResult? Function(ExampleStateLoaded value)? loaded,
    TResult? Function(ExampleStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleStateInitial value)? initial,
    TResult Function(ExampleStateLoading value)? loading,
    TResult Function(ExampleStateLoaded value)? loaded,
    TResult Function(ExampleStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExampleStateError implements ExampleState {
  const factory ExampleStateError(final Failure<void> failure) =
      _$ExampleStateErrorImpl;

  Failure<void> get failure;
  @JsonKey(ignore: true)
  _$$ExampleStateErrorImplCopyWith<_$ExampleStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
