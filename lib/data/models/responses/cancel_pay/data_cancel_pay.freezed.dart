// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_cancel_pay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataCancelPay _$DataCancelPayFromJson(Map<String, dynamic> json) {
  return _DataCancelPay.fromJson(json);
}

/// @nodoc
mixin _$DataCancelPay {
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCancelPayCopyWith<DataCancelPay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCancelPayCopyWith<$Res> {
  factory $DataCancelPayCopyWith(
          DataCancelPay value, $Res Function(DataCancelPay) then) =
      _$DataCancelPayCopyWithImpl<$Res, DataCancelPay>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$DataCancelPayCopyWithImpl<$Res, $Val extends DataCancelPay>
    implements $DataCancelPayCopyWith<$Res> {
  _$DataCancelPayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCancelPayCopyWith<$Res>
    implements $DataCancelPayCopyWith<$Res> {
  factory _$$_DataCancelPayCopyWith(
          _$_DataCancelPay value, $Res Function(_$_DataCancelPay) then) =
      __$$_DataCancelPayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$_DataCancelPayCopyWithImpl<$Res>
    extends _$DataCancelPayCopyWithImpl<$Res, _$_DataCancelPay>
    implements _$$_DataCancelPayCopyWith<$Res> {
  __$$_DataCancelPayCopyWithImpl(
      _$_DataCancelPay _value, $Res Function(_$_DataCancelPay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$_DataCancelPay(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataCancelPay implements _DataCancelPay {
  const _$_DataCancelPay({required this.success});

  factory _$_DataCancelPay.fromJson(Map<String, dynamic> json) =>
      _$$_DataCancelPayFromJson(json);

  @override
  final bool success;

  @override
  String toString() {
    return 'DataCancelPay(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataCancelPay &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCancelPayCopyWith<_$_DataCancelPay> get copyWith =>
      __$$_DataCancelPayCopyWithImpl<_$_DataCancelPay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataCancelPayToJson(
      this,
    );
  }
}

abstract class _DataCancelPay implements DataCancelPay {
  const factory _DataCancelPay({required final bool success}) =
      _$_DataCancelPay;

  factory _DataCancelPay.fromJson(Map<String, dynamic> json) =
      _$_DataCancelPay.fromJson;

  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$_DataCancelPayCopyWith<_$_DataCancelPay> get copyWith =>
      throw _privateConstructorUsedError;
}
