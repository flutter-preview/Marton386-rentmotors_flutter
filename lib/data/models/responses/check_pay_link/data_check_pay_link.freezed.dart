// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_check_pay_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataCheckPayLink _$DataCheckPayLinkFromJson(Map<String, dynamic> json) {
  return _DataCheckPayLink.fromJson(json);
}

/// @nodoc
mixin _$DataCheckPayLink {
  int get code => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCheckPayLinkCopyWith<DataCheckPayLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCheckPayLinkCopyWith<$Res> {
  factory $DataCheckPayLinkCopyWith(
          DataCheckPayLink value, $Res Function(DataCheckPayLink) then) =
      _$DataCheckPayLinkCopyWithImpl<$Res, DataCheckPayLink>;
  @useResult
  $Res call({int code, String msg});
}

/// @nodoc
class _$DataCheckPayLinkCopyWithImpl<$Res, $Val extends DataCheckPayLink>
    implements $DataCheckPayLinkCopyWith<$Res> {
  _$DataCheckPayLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCheckPayLinkCopyWith<$Res>
    implements $DataCheckPayLinkCopyWith<$Res> {
  factory _$$_DataCheckPayLinkCopyWith(
          _$_DataCheckPayLink value, $Res Function(_$_DataCheckPayLink) then) =
      __$$_DataCheckPayLinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String msg});
}

/// @nodoc
class __$$_DataCheckPayLinkCopyWithImpl<$Res>
    extends _$DataCheckPayLinkCopyWithImpl<$Res, _$_DataCheckPayLink>
    implements _$$_DataCheckPayLinkCopyWith<$Res> {
  __$$_DataCheckPayLinkCopyWithImpl(
      _$_DataCheckPayLink _value, $Res Function(_$_DataCheckPayLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_$_DataCheckPayLink(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataCheckPayLink implements _DataCheckPayLink {
  const _$_DataCheckPayLink({required this.code, required this.msg});

  factory _$_DataCheckPayLink.fromJson(Map<String, dynamic> json) =>
      _$$_DataCheckPayLinkFromJson(json);

  @override
  final int code;
  @override
  final String msg;

  @override
  String toString() {
    return 'DataCheckPayLink(code: $code, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataCheckPayLink &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCheckPayLinkCopyWith<_$_DataCheckPayLink> get copyWith =>
      __$$_DataCheckPayLinkCopyWithImpl<_$_DataCheckPayLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataCheckPayLinkToJson(
      this,
    );
  }
}

abstract class _DataCheckPayLink implements DataCheckPayLink {
  const factory _DataCheckPayLink(
      {required final int code,
      required final String msg}) = _$_DataCheckPayLink;

  factory _DataCheckPayLink.fromJson(Map<String, dynamic> json) =
      _$_DataCheckPayLink.fromJson;

  @override
  int get code;
  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$_DataCheckPayLinkCopyWith<_$_DataCheckPayLink> get copyWith =>
      throw _privateConstructorUsedError;
}
