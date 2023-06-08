// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_reservation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyReservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyReservationEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyReservationEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyReservationEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyReservationEventCopyWith<$Res> {
  factory $MyReservationEventCopyWith(
          MyReservationEvent value, $Res Function(MyReservationEvent) then) =
      _$MyReservationEventCopyWithImpl<$Res, MyReservationEvent>;
}

/// @nodoc
class _$MyReservationEventCopyWithImpl<$Res, $Val extends MyReservationEvent>
    implements $MyReservationEventCopyWith<$Res> {
  _$MyReservationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MyReservationEventFetchCopyWith<$Res> {
  factory _$$MyReservationEventFetchCopyWith(_$MyReservationEventFetch value,
          $Res Function(_$MyReservationEventFetch) then) =
      __$$MyReservationEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyReservationEventFetchCopyWithImpl<$Res>
    extends _$MyReservationEventCopyWithImpl<$Res, _$MyReservationEventFetch>
    implements _$$MyReservationEventFetchCopyWith<$Res> {
  __$$MyReservationEventFetchCopyWithImpl(_$MyReservationEventFetch _value,
      $Res Function(_$MyReservationEventFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MyReservationEventFetch implements MyReservationEventFetch {
  const _$MyReservationEventFetch();

  @override
  String toString() {
    return 'MyReservationEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyReservationEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyReservationEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyReservationEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyReservationEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class MyReservationEventFetch implements MyReservationEvent {
  const factory MyReservationEventFetch() = _$MyReservationEventFetch;
}

/// @nodoc
mixin _$MyReservationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() canceled,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? canceled,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? canceled,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyReservationStateLoaded value) loaded,
    required TResult Function(MyReservationStateLoading value) loading,
    required TResult Function(MyReservationStateCanceled value) canceled,
    required TResult Function(MyReservationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyReservationStateLoaded value)? loaded,
    TResult? Function(MyReservationStateLoading value)? loading,
    TResult? Function(MyReservationStateCanceled value)? canceled,
    TResult? Function(MyReservationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyReservationStateLoaded value)? loaded,
    TResult Function(MyReservationStateLoading value)? loading,
    TResult Function(MyReservationStateCanceled value)? canceled,
    TResult Function(MyReservationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyReservationStateCopyWith<$Res> {
  factory $MyReservationStateCopyWith(
          MyReservationState value, $Res Function(MyReservationState) then) =
      _$MyReservationStateCopyWithImpl<$Res, MyReservationState>;
}

/// @nodoc
class _$MyReservationStateCopyWithImpl<$Res, $Val extends MyReservationState>
    implements $MyReservationStateCopyWith<$Res> {
  _$MyReservationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MyReservationStateLoadedCopyWith<$Res> {
  factory _$$MyReservationStateLoadedCopyWith(_$MyReservationStateLoaded value,
          $Res Function(_$MyReservationStateLoaded) then) =
      __$$MyReservationStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyReservationStateLoadedCopyWithImpl<$Res>
    extends _$MyReservationStateCopyWithImpl<$Res, _$MyReservationStateLoaded>
    implements _$$MyReservationStateLoadedCopyWith<$Res> {
  __$$MyReservationStateLoadedCopyWithImpl(_$MyReservationStateLoaded _value,
      $Res Function(_$MyReservationStateLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MyReservationStateLoaded implements MyReservationStateLoaded {
  const _$MyReservationStateLoaded();

  @override
  String toString() {
    return 'MyReservationState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyReservationStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() canceled,
    required TResult Function(String error) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? canceled,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? canceled,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyReservationStateLoaded value) loaded,
    required TResult Function(MyReservationStateLoading value) loading,
    required TResult Function(MyReservationStateCanceled value) canceled,
    required TResult Function(MyReservationStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyReservationStateLoaded value)? loaded,
    TResult? Function(MyReservationStateLoading value)? loading,
    TResult? Function(MyReservationStateCanceled value)? canceled,
    TResult? Function(MyReservationStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyReservationStateLoaded value)? loaded,
    TResult Function(MyReservationStateLoading value)? loading,
    TResult Function(MyReservationStateCanceled value)? canceled,
    TResult Function(MyReservationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MyReservationStateLoaded implements MyReservationState {
  const factory MyReservationStateLoaded() = _$MyReservationStateLoaded;
}

/// @nodoc
abstract class _$$MyReservationStateLoadingCopyWith<$Res> {
  factory _$$MyReservationStateLoadingCopyWith(
          _$MyReservationStateLoading value,
          $Res Function(_$MyReservationStateLoading) then) =
      __$$MyReservationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyReservationStateLoadingCopyWithImpl<$Res>
    extends _$MyReservationStateCopyWithImpl<$Res, _$MyReservationStateLoading>
    implements _$$MyReservationStateLoadingCopyWith<$Res> {
  __$$MyReservationStateLoadingCopyWithImpl(_$MyReservationStateLoading _value,
      $Res Function(_$MyReservationStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MyReservationStateLoading implements MyReservationStateLoading {
  const _$MyReservationStateLoading();

  @override
  String toString() {
    return 'MyReservationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyReservationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() canceled,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? canceled,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? canceled,
    TResult Function(String error)? error,
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
    required TResult Function(MyReservationStateLoaded value) loaded,
    required TResult Function(MyReservationStateLoading value) loading,
    required TResult Function(MyReservationStateCanceled value) canceled,
    required TResult Function(MyReservationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyReservationStateLoaded value)? loaded,
    TResult? Function(MyReservationStateLoading value)? loading,
    TResult? Function(MyReservationStateCanceled value)? canceled,
    TResult? Function(MyReservationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyReservationStateLoaded value)? loaded,
    TResult Function(MyReservationStateLoading value)? loading,
    TResult Function(MyReservationStateCanceled value)? canceled,
    TResult Function(MyReservationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MyReservationStateLoading implements MyReservationState {
  const factory MyReservationStateLoading() = _$MyReservationStateLoading;
}

/// @nodoc
abstract class _$$MyReservationStateCanceledCopyWith<$Res> {
  factory _$$MyReservationStateCanceledCopyWith(
          _$MyReservationStateCanceled value,
          $Res Function(_$MyReservationStateCanceled) then) =
      __$$MyReservationStateCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyReservationStateCanceledCopyWithImpl<$Res>
    extends _$MyReservationStateCopyWithImpl<$Res, _$MyReservationStateCanceled>
    implements _$$MyReservationStateCanceledCopyWith<$Res> {
  __$$MyReservationStateCanceledCopyWithImpl(
      _$MyReservationStateCanceled _value,
      $Res Function(_$MyReservationStateCanceled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MyReservationStateCanceled implements MyReservationStateCanceled {
  const _$MyReservationStateCanceled();

  @override
  String toString() {
    return 'MyReservationState.canceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyReservationStateCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() canceled,
    required TResult Function(String error) error,
  }) {
    return canceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? canceled,
    TResult? Function(String error)? error,
  }) {
    return canceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? canceled,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyReservationStateLoaded value) loaded,
    required TResult Function(MyReservationStateLoading value) loading,
    required TResult Function(MyReservationStateCanceled value) canceled,
    required TResult Function(MyReservationStateError value) error,
  }) {
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyReservationStateLoaded value)? loaded,
    TResult? Function(MyReservationStateLoading value)? loading,
    TResult? Function(MyReservationStateCanceled value)? canceled,
    TResult? Function(MyReservationStateError value)? error,
  }) {
    return canceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyReservationStateLoaded value)? loaded,
    TResult Function(MyReservationStateLoading value)? loading,
    TResult Function(MyReservationStateCanceled value)? canceled,
    TResult Function(MyReservationStateError value)? error,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class MyReservationStateCanceled implements MyReservationState {
  const factory MyReservationStateCanceled() = _$MyReservationStateCanceled;
}

/// @nodoc
abstract class _$$MyReservationStateErrorCopyWith<$Res> {
  factory _$$MyReservationStateErrorCopyWith(_$MyReservationStateError value,
          $Res Function(_$MyReservationStateError) then) =
      __$$MyReservationStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$MyReservationStateErrorCopyWithImpl<$Res>
    extends _$MyReservationStateCopyWithImpl<$Res, _$MyReservationStateError>
    implements _$$MyReservationStateErrorCopyWith<$Res> {
  __$$MyReservationStateErrorCopyWithImpl(_$MyReservationStateError _value,
      $Res Function(_$MyReservationStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$MyReservationStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MyReservationStateError implements MyReservationStateError {
  const _$MyReservationStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MyReservationState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyReservationStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyReservationStateErrorCopyWith<_$MyReservationStateError> get copyWith =>
      __$$MyReservationStateErrorCopyWithImpl<_$MyReservationStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() canceled,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? canceled,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? canceled,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyReservationStateLoaded value) loaded,
    required TResult Function(MyReservationStateLoading value) loading,
    required TResult Function(MyReservationStateCanceled value) canceled,
    required TResult Function(MyReservationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyReservationStateLoaded value)? loaded,
    TResult? Function(MyReservationStateLoading value)? loading,
    TResult? Function(MyReservationStateCanceled value)? canceled,
    TResult? Function(MyReservationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyReservationStateLoaded value)? loaded,
    TResult Function(MyReservationStateLoading value)? loading,
    TResult Function(MyReservationStateCanceled value)? canceled,
    TResult Function(MyReservationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MyReservationStateError implements MyReservationState {
  const factory MyReservationStateError({required final String error}) =
      _$MyReservationStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$MyReservationStateErrorCopyWith<_$MyReservationStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
