// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_modify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModify _$DataModifyFromJson(Map<String, dynamic> json) {
  return _DataModify.fromJson(json);
}

/// @nodoc
mixin _$DataModify {
// ignore: non_constant_identifier_names
  String get res_id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get supplier_res_id => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModifyCopyWith<DataModify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModifyCopyWith<$Res> {
  factory $DataModifyCopyWith(
          DataModify value, $Res Function(DataModify) then) =
      _$DataModifyCopyWithImpl<$Res, DataModify>;
  @useResult
  $Res call({String res_id, int supplier_res_id, int version, int status});
}

/// @nodoc
class _$DataModifyCopyWithImpl<$Res, $Val extends DataModify>
    implements $DataModifyCopyWith<$Res> {
  _$DataModifyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? res_id = null,
    Object? supplier_res_id = null,
    Object? version = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      res_id: null == res_id
          ? _value.res_id
          : res_id // ignore: cast_nullable_to_non_nullable
              as String,
      supplier_res_id: null == supplier_res_id
          ? _value.supplier_res_id
          : supplier_res_id // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataModifyCopyWith<$Res>
    implements $DataModifyCopyWith<$Res> {
  factory _$$_DataModifyCopyWith(
          _$_DataModify value, $Res Function(_$_DataModify) then) =
      __$$_DataModifyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String res_id, int supplier_res_id, int version, int status});
}

/// @nodoc
class __$$_DataModifyCopyWithImpl<$Res>
    extends _$DataModifyCopyWithImpl<$Res, _$_DataModify>
    implements _$$_DataModifyCopyWith<$Res> {
  __$$_DataModifyCopyWithImpl(
      _$_DataModify _value, $Res Function(_$_DataModify) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? res_id = null,
    Object? supplier_res_id = null,
    Object? version = null,
    Object? status = null,
  }) {
    return _then(_$_DataModify(
      res_id: null == res_id
          ? _value.res_id
          : res_id // ignore: cast_nullable_to_non_nullable
              as String,
      supplier_res_id: null == supplier_res_id
          ? _value.supplier_res_id
          : supplier_res_id // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModify implements _DataModify {
  const _$_DataModify(
      {required this.res_id,
      required this.supplier_res_id,
      required this.version,
      required this.status});

  factory _$_DataModify.fromJson(Map<String, dynamic> json) =>
      _$$_DataModifyFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final String res_id;
// ignore: non_constant_identifier_names
  @override
  final int supplier_res_id;
  @override
  final int version;
  @override
  final int status;

  @override
  String toString() {
    return 'DataModify(res_id: $res_id, supplier_res_id: $supplier_res_id, version: $version, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataModify &&
            (identical(other.res_id, res_id) || other.res_id == res_id) &&
            (identical(other.supplier_res_id, supplier_res_id) ||
                other.supplier_res_id == supplier_res_id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, res_id, supplier_res_id, version, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataModifyCopyWith<_$_DataModify> get copyWith =>
      __$$_DataModifyCopyWithImpl<_$_DataModify>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModifyToJson(
      this,
    );
  }
}

abstract class _DataModify implements DataModify {
  const factory _DataModify(
      {required final String res_id,
      required final int supplier_res_id,
      required final int version,
      required final int status}) = _$_DataModify;

  factory _DataModify.fromJson(Map<String, dynamic> json) =
      _$_DataModify.fromJson;

  @override // ignore: non_constant_identifier_names
  String get res_id;
  @override // ignore: non_constant_identifier_names
  int get supplier_res_id;
  @override
  int get version;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_DataModifyCopyWith<_$_DataModify> get copyWith =>
      throw _privateConstructorUsedError;
}
