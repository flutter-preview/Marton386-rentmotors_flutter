// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_extra.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataExtra _$DataExtraFromJson(Map<String, dynamic> json) {
  return _DataExtra.fromJson(json);
}

/// @nodoc
mixin _$DataExtra {
  String get title => throw _privateConstructorUsedError;
  String get description =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get max_count =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get per_what =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get short_code => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get adr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataExtraCopyWith<DataExtra> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataExtraCopyWith<$Res> {
  factory $DataExtraCopyWith(DataExtra value, $Res Function(DataExtra) then) =
      _$DataExtraCopyWithImpl<$Res, DataExtra>;
  @useResult
  $Res call(
      {String title,
      String description,
      int max_count,
      int per_what,
      String short_code,
      double price,
      int? quantity,
      String? adr});
}

/// @nodoc
class _$DataExtraCopyWithImpl<$Res, $Val extends DataExtra>
    implements $DataExtraCopyWith<$Res> {
  _$DataExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? max_count = null,
    Object? per_what = null,
    Object? short_code = null,
    Object? price = null,
    Object? quantity = freezed,
    Object? adr = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      max_count: null == max_count
          ? _value.max_count
          : max_count // ignore: cast_nullable_to_non_nullable
              as int,
      per_what: null == per_what
          ? _value.per_what
          : per_what // ignore: cast_nullable_to_non_nullable
              as int,
      short_code: null == short_code
          ? _value.short_code
          : short_code // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      adr: freezed == adr
          ? _value.adr
          : adr // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataExtraCopyWith<$Res> implements $DataExtraCopyWith<$Res> {
  factory _$$_DataExtraCopyWith(
          _$_DataExtra value, $Res Function(_$_DataExtra) then) =
      __$$_DataExtraCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      int max_count,
      int per_what,
      String short_code,
      double price,
      int? quantity,
      String? adr});
}

/// @nodoc
class __$$_DataExtraCopyWithImpl<$Res>
    extends _$DataExtraCopyWithImpl<$Res, _$_DataExtra>
    implements _$$_DataExtraCopyWith<$Res> {
  __$$_DataExtraCopyWithImpl(
      _$_DataExtra _value, $Res Function(_$_DataExtra) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? max_count = null,
    Object? per_what = null,
    Object? short_code = null,
    Object? price = null,
    Object? quantity = freezed,
    Object? adr = freezed,
  }) {
    return _then(_$_DataExtra(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      max_count: null == max_count
          ? _value.max_count
          : max_count // ignore: cast_nullable_to_non_nullable
              as int,
      per_what: null == per_what
          ? _value.per_what
          : per_what // ignore: cast_nullable_to_non_nullable
              as int,
      short_code: null == short_code
          ? _value.short_code
          : short_code // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      adr: freezed == adr
          ? _value.adr
          : adr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataExtra implements _DataExtra {
  const _$_DataExtra(
      {required this.title,
      required this.description,
      required this.max_count,
      required this.per_what,
      required this.short_code,
      required this.price,
      this.quantity,
      this.adr});

  factory _$_DataExtra.fromJson(Map<String, dynamic> json) =>
      _$$_DataExtraFromJson(json);

  @override
  final String title;
  @override
  final String description;
// ignore: non_constant_identifier_names
  @override
  final int max_count;
// ignore: non_constant_identifier_names
  @override
  final int per_what;
// ignore: non_constant_identifier_names
  @override
  final String short_code;
  @override
  final double price;
  @override
  final int? quantity;
  @override
  final String? adr;

  @override
  String toString() {
    return 'DataExtra(title: $title, description: $description, max_count: $max_count, per_what: $per_what, short_code: $short_code, price: $price, quantity: $quantity, adr: $adr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataExtra &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.max_count, max_count) ||
                other.max_count == max_count) &&
            (identical(other.per_what, per_what) ||
                other.per_what == per_what) &&
            (identical(other.short_code, short_code) ||
                other.short_code == short_code) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.adr, adr) || other.adr == adr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, max_count,
      per_what, short_code, price, quantity, adr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataExtraCopyWith<_$_DataExtra> get copyWith =>
      __$$_DataExtraCopyWithImpl<_$_DataExtra>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataExtraToJson(
      this,
    );
  }
}

abstract class _DataExtra implements DataExtra {
  const factory _DataExtra(
      {required final String title,
      required final String description,
      required final int max_count,
      required final int per_what,
      required final String short_code,
      required final double price,
      final int? quantity,
      final String? adr}) = _$_DataExtra;

  factory _DataExtra.fromJson(Map<String, dynamic> json) =
      _$_DataExtra.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override // ignore: non_constant_identifier_names
  int get max_count;
  @override // ignore: non_constant_identifier_names
  int get per_what;
  @override // ignore: non_constant_identifier_names
  String get short_code;
  @override
  double get price;
  @override
  int? get quantity;
  @override
  String? get adr;
  @override
  @JsonKey(ignore: true)
  _$$_DataExtraCopyWith<_$_DataExtra> get copyWith =>
      throw _privateConstructorUsedError;
}
