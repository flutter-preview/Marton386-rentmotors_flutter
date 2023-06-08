// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_fee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataFee _$DataFeeFromJson(Map<String, dynamic> json) {
  return _DataFee.fromJson(json);
}

/// @nodoc
mixin _$DataFee {
  String get code => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataFeeCopyWith<DataFee> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataFeeCopyWith<$Res> {
  factory $DataFeeCopyWith(DataFee value, $Res Function(DataFee) then) =
      _$DataFeeCopyWithImpl<$Res, DataFee>;
  @useResult
  $Res call({String code, double cost, String description});
}

/// @nodoc
class _$DataFeeCopyWithImpl<$Res, $Val extends DataFee>
    implements $DataFeeCopyWith<$Res> {
  _$DataFeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? cost = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataFeeCopyWith<$Res> implements $DataFeeCopyWith<$Res> {
  factory _$$_DataFeeCopyWith(
          _$_DataFee value, $Res Function(_$_DataFee) then) =
      __$$_DataFeeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, double cost, String description});
}

/// @nodoc
class __$$_DataFeeCopyWithImpl<$Res>
    extends _$DataFeeCopyWithImpl<$Res, _$_DataFee>
    implements _$$_DataFeeCopyWith<$Res> {
  __$$_DataFeeCopyWithImpl(_$_DataFee _value, $Res Function(_$_DataFee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? cost = null,
    Object? description = null,
  }) {
    return _then(_$_DataFee(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataFee implements _DataFee {
  const _$_DataFee(
      {required this.code, required this.cost, required this.description});

  factory _$_DataFee.fromJson(Map<String, dynamic> json) =>
      _$$_DataFeeFromJson(json);

  @override
  final String code;
  @override
  final double cost;
  @override
  final String description;

  @override
  String toString() {
    return 'DataFee(code: $code, cost: $cost, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataFee &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, cost, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataFeeCopyWith<_$_DataFee> get copyWith =>
      __$$_DataFeeCopyWithImpl<_$_DataFee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataFeeToJson(
      this,
    );
  }
}

abstract class _DataFee implements DataFee {
  const factory _DataFee(
      {required final String code,
      required final double cost,
      required final String description}) = _$_DataFee;

  factory _DataFee.fromJson(Map<String, dynamic> json) = _$_DataFee.fromJson;

  @override
  String get code;
  @override
  double get cost;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_DataFeeCopyWith<_$_DataFee> get copyWith =>
      throw _privateConstructorUsedError;
}
