// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_org_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataOrgRequest _$DataOrgRequestFromJson(Map<String, dynamic> json) {
  return _DataOrgRequest.fromJson(json);
}

/// @nodoc
mixin _$DataOrgRequest {
  String get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataOrgRequestCopyWith<DataOrgRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataOrgRequestCopyWith<$Res> {
  factory $DataOrgRequestCopyWith(
          DataOrgRequest value, $Res Function(DataOrgRequest) then) =
      _$DataOrgRequestCopyWithImpl<$Res, DataOrgRequest>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$DataOrgRequestCopyWithImpl<$Res, $Val extends DataOrgRequest>
    implements $DataOrgRequestCopyWith<$Res> {
  _$DataOrgRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataOrgRequestCopyWith<$Res>
    implements $DataOrgRequestCopyWith<$Res> {
  factory _$$_DataOrgRequestCopyWith(
          _$_DataOrgRequest value, $Res Function(_$_DataOrgRequest) then) =
      __$$_DataOrgRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_DataOrgRequestCopyWithImpl<$Res>
    extends _$DataOrgRequestCopyWithImpl<$Res, _$_DataOrgRequest>
    implements _$$_DataOrgRequestCopyWith<$Res> {
  __$$_DataOrgRequestCopyWithImpl(
      _$_DataOrgRequest _value, $Res Function(_$_DataOrgRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_DataOrgRequest(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataOrgRequest implements _DataOrgRequest {
  const _$_DataOrgRequest({required this.query});

  factory _$_DataOrgRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DataOrgRequestFromJson(json);

  @override
  final String query;

  @override
  String toString() {
    return 'DataOrgRequest(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataOrgRequest &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataOrgRequestCopyWith<_$_DataOrgRequest> get copyWith =>
      __$$_DataOrgRequestCopyWithImpl<_$_DataOrgRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataOrgRequestToJson(
      this,
    );
  }
}

abstract class _DataOrgRequest implements DataOrgRequest {
  const factory _DataOrgRequest({required final String query}) =
      _$_DataOrgRequest;

  factory _DataOrgRequest.fromJson(Map<String, dynamic> json) =
      _$_DataOrgRequest.fromJson;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_DataOrgRequestCopyWith<_$_DataOrgRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
