// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_client_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataClientInfo _$DataClientInfoFromJson(Map<String, dynamic> json) {
  return _DataClientInfo.fromJson(json);
}

/// @nodoc
mixin _$DataClientInfo {
// ignore: non_constant_identifier_names
  int get customer_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataClientInfoCopyWith<DataClientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataClientInfoCopyWith<$Res> {
  factory $DataClientInfoCopyWith(
          DataClientInfo value, $Res Function(DataClientInfo) then) =
      _$DataClientInfoCopyWithImpl<$Res, DataClientInfo>;
  @useResult
  $Res call({int customer_id});
}

/// @nodoc
class _$DataClientInfoCopyWithImpl<$Res, $Val extends DataClientInfo>
    implements $DataClientInfoCopyWith<$Res> {
  _$DataClientInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer_id = null,
  }) {
    return _then(_value.copyWith(
      customer_id: null == customer_id
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataClientInfoCopyWith<$Res>
    implements $DataClientInfoCopyWith<$Res> {
  factory _$$_DataClientInfoCopyWith(
          _$_DataClientInfo value, $Res Function(_$_DataClientInfo) then) =
      __$$_DataClientInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int customer_id});
}

/// @nodoc
class __$$_DataClientInfoCopyWithImpl<$Res>
    extends _$DataClientInfoCopyWithImpl<$Res, _$_DataClientInfo>
    implements _$$_DataClientInfoCopyWith<$Res> {
  __$$_DataClientInfoCopyWithImpl(
      _$_DataClientInfo _value, $Res Function(_$_DataClientInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer_id = null,
  }) {
    return _then(_$_DataClientInfo(
      customer_id: null == customer_id
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataClientInfo implements _DataClientInfo {
  const _$_DataClientInfo({required this.customer_id});

  factory _$_DataClientInfo.fromJson(Map<String, dynamic> json) =>
      _$$_DataClientInfoFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final int customer_id;

  @override
  String toString() {
    return 'DataClientInfo(customer_id: $customer_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataClientInfo &&
            (identical(other.customer_id, customer_id) ||
                other.customer_id == customer_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customer_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataClientInfoCopyWith<_$_DataClientInfo> get copyWith =>
      __$$_DataClientInfoCopyWithImpl<_$_DataClientInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataClientInfoToJson(
      this,
    );
  }
}

abstract class _DataClientInfo implements DataClientInfo {
  const factory _DataClientInfo({required final int customer_id}) =
      _$_DataClientInfo;

  factory _DataClientInfo.fromJson(Map<String, dynamic> json) =
      _$_DataClientInfo.fromJson;

  @override // ignore: non_constant_identifier_names
  int get customer_id;
  @override
  @JsonKey(ignore: true)
  _$$_DataClientInfoCopyWith<_$_DataClientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
