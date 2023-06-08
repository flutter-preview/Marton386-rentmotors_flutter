// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_cancel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataCancel _$DataCancelFromJson(Map<String, dynamic> json) {
  return _DataCancel.fromJson(json);
}

/// @nodoc
mixin _$DataCancel {
// ignore: non_constant_identifier_names
  String get res_id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get supplier_res_id => throw _privateConstructorUsedError;
  int get status =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get cancelation_fee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCancelCopyWith<DataCancel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCancelCopyWith<$Res> {
  factory $DataCancelCopyWith(
          DataCancel value, $Res Function(DataCancel) then) =
      _$DataCancelCopyWithImpl<$Res, DataCancel>;
  @useResult
  $Res call(
      {String res_id, String supplier_res_id, int status, int cancelation_fee});
}

/// @nodoc
class _$DataCancelCopyWithImpl<$Res, $Val extends DataCancel>
    implements $DataCancelCopyWith<$Res> {
  _$DataCancelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? res_id = null,
    Object? supplier_res_id = null,
    Object? status = null,
    Object? cancelation_fee = null,
  }) {
    return _then(_value.copyWith(
      res_id: null == res_id
          ? _value.res_id
          : res_id // ignore: cast_nullable_to_non_nullable
              as String,
      supplier_res_id: null == supplier_res_id
          ? _value.supplier_res_id
          : supplier_res_id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      cancelation_fee: null == cancelation_fee
          ? _value.cancelation_fee
          : cancelation_fee // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCancelCopyWith<$Res>
    implements $DataCancelCopyWith<$Res> {
  factory _$$_DataCancelCopyWith(
          _$_DataCancel value, $Res Function(_$_DataCancel) then) =
      __$$_DataCancelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String res_id, String supplier_res_id, int status, int cancelation_fee});
}

/// @nodoc
class __$$_DataCancelCopyWithImpl<$Res>
    extends _$DataCancelCopyWithImpl<$Res, _$_DataCancel>
    implements _$$_DataCancelCopyWith<$Res> {
  __$$_DataCancelCopyWithImpl(
      _$_DataCancel _value, $Res Function(_$_DataCancel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? res_id = null,
    Object? supplier_res_id = null,
    Object? status = null,
    Object? cancelation_fee = null,
  }) {
    return _then(_$_DataCancel(
      res_id: null == res_id
          ? _value.res_id
          : res_id // ignore: cast_nullable_to_non_nullable
              as String,
      supplier_res_id: null == supplier_res_id
          ? _value.supplier_res_id
          : supplier_res_id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      cancelation_fee: null == cancelation_fee
          ? _value.cancelation_fee
          : cancelation_fee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataCancel implements _DataCancel {
  const _$_DataCancel(
      {required this.res_id,
      required this.supplier_res_id,
      required this.status,
      required this.cancelation_fee});

  factory _$_DataCancel.fromJson(Map<String, dynamic> json) =>
      _$$_DataCancelFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final String res_id;
// ignore: non_constant_identifier_names
  @override
  final String supplier_res_id;
  @override
  final int status;
// ignore: non_constant_identifier_names
  @override
  final int cancelation_fee;

  @override
  String toString() {
    return 'DataCancel(res_id: $res_id, supplier_res_id: $supplier_res_id, status: $status, cancelation_fee: $cancelation_fee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataCancel &&
            (identical(other.res_id, res_id) || other.res_id == res_id) &&
            (identical(other.supplier_res_id, supplier_res_id) ||
                other.supplier_res_id == supplier_res_id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cancelation_fee, cancelation_fee) ||
                other.cancelation_fee == cancelation_fee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, res_id, supplier_res_id, status, cancelation_fee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCancelCopyWith<_$_DataCancel> get copyWith =>
      __$$_DataCancelCopyWithImpl<_$_DataCancel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataCancelToJson(
      this,
    );
  }
}

abstract class _DataCancel implements DataCancel {
  const factory _DataCancel(
      {required final String res_id,
      required final String supplier_res_id,
      required final int status,
      required final int cancelation_fee}) = _$_DataCancel;

  factory _DataCancel.fromJson(Map<String, dynamic> json) =
      _$_DataCancel.fromJson;

  @override // ignore: non_constant_identifier_names
  String get res_id;
  @override // ignore: non_constant_identifier_names
  String get supplier_res_id;
  @override
  int get status;
  @override // ignore: non_constant_identifier_names
  int get cancelation_fee;
  @override
  @JsonKey(ignore: true)
  _$$_DataCancelCopyWith<_$_DataCancel> get copyWith =>
      throw _privateConstructorUsedError;
}
