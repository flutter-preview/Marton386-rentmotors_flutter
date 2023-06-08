// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_get_pay_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataGetPayResponse _$DataGetPayResponseFromJson(Map<String, dynamic> json) {
  return _DataGetPayResponse.fromJson(json);
}

/// @nodoc
mixin _$DataGetPayResponse {
// ignore: non_constant_identifier_names
  int get order_id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get payment_url =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get error_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataGetPayResponseCopyWith<DataGetPayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataGetPayResponseCopyWith<$Res> {
  factory $DataGetPayResponseCopyWith(
          DataGetPayResponse value, $Res Function(DataGetPayResponse) then) =
      _$DataGetPayResponseCopyWithImpl<$Res, DataGetPayResponse>;
  @useResult
  $Res call({int order_id, String payment_url, int error_code});
}

/// @nodoc
class _$DataGetPayResponseCopyWithImpl<$Res, $Val extends DataGetPayResponse>
    implements $DataGetPayResponseCopyWith<$Res> {
  _$DataGetPayResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order_id = null,
    Object? payment_url = null,
    Object? error_code = null,
  }) {
    return _then(_value.copyWith(
      order_id: null == order_id
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as int,
      payment_url: null == payment_url
          ? _value.payment_url
          : payment_url // ignore: cast_nullable_to_non_nullable
              as String,
      error_code: null == error_code
          ? _value.error_code
          : error_code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataGetPayResponseCopyWith<$Res>
    implements $DataGetPayResponseCopyWith<$Res> {
  factory _$$_DataGetPayResponseCopyWith(_$_DataGetPayResponse value,
          $Res Function(_$_DataGetPayResponse) then) =
      __$$_DataGetPayResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int order_id, String payment_url, int error_code});
}

/// @nodoc
class __$$_DataGetPayResponseCopyWithImpl<$Res>
    extends _$DataGetPayResponseCopyWithImpl<$Res, _$_DataGetPayResponse>
    implements _$$_DataGetPayResponseCopyWith<$Res> {
  __$$_DataGetPayResponseCopyWithImpl(
      _$_DataGetPayResponse _value, $Res Function(_$_DataGetPayResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order_id = null,
    Object? payment_url = null,
    Object? error_code = null,
  }) {
    return _then(_$_DataGetPayResponse(
      order_id: null == order_id
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as int,
      payment_url: null == payment_url
          ? _value.payment_url
          : payment_url // ignore: cast_nullable_to_non_nullable
              as String,
      error_code: null == error_code
          ? _value.error_code
          : error_code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataGetPayResponse implements _DataGetPayResponse {
  const _$_DataGetPayResponse(
      {required this.order_id,
      required this.payment_url,
      required this.error_code});

  factory _$_DataGetPayResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DataGetPayResponseFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final int order_id;
// ignore: non_constant_identifier_names
  @override
  final String payment_url;
// ignore: non_constant_identifier_names
  @override
  final int error_code;

  @override
  String toString() {
    return 'DataGetPayResponse(order_id: $order_id, payment_url: $payment_url, error_code: $error_code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataGetPayResponse &&
            (identical(other.order_id, order_id) ||
                other.order_id == order_id) &&
            (identical(other.payment_url, payment_url) ||
                other.payment_url == payment_url) &&
            (identical(other.error_code, error_code) ||
                other.error_code == error_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, order_id, payment_url, error_code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataGetPayResponseCopyWith<_$_DataGetPayResponse> get copyWith =>
      __$$_DataGetPayResponseCopyWithImpl<_$_DataGetPayResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataGetPayResponseToJson(
      this,
    );
  }
}

abstract class _DataGetPayResponse implements DataGetPayResponse {
  const factory _DataGetPayResponse(
      {required final int order_id,
      required final String payment_url,
      required final int error_code}) = _$_DataGetPayResponse;

  factory _DataGetPayResponse.fromJson(Map<String, dynamic> json) =
      _$_DataGetPayResponse.fromJson;

  @override // ignore: non_constant_identifier_names
  int get order_id;
  @override // ignore: non_constant_identifier_names
  String get payment_url;
  @override // ignore: non_constant_identifier_names
  int get error_code;
  @override
  @JsonKey(ignore: true)
  _$$_DataGetPayResponseCopyWith<_$_DataGetPayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
