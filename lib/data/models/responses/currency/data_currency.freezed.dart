// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataCurrency _$DataCurrencyFromJson(Map<String, dynamic> json) {
  return _DataCurrency.fromJson(json);
}

/// @nodoc
mixin _$DataCurrency {
  int get id => throw _privateConstructorUsedError;
  String get title =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get short_title =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get short_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCurrencyCopyWith<DataCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCurrencyCopyWith<$Res> {
  factory $DataCurrencyCopyWith(
          DataCurrency value, $Res Function(DataCurrency) then) =
      _$DataCurrencyCopyWithImpl<$Res, DataCurrency>;
  @useResult
  $Res call({int id, String title, String short_title, String short_code});
}

/// @nodoc
class _$DataCurrencyCopyWithImpl<$Res, $Val extends DataCurrency>
    implements $DataCurrencyCopyWith<$Res> {
  _$DataCurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? short_title = null,
    Object? short_code = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      short_title: null == short_title
          ? _value.short_title
          : short_title // ignore: cast_nullable_to_non_nullable
              as String,
      short_code: null == short_code
          ? _value.short_code
          : short_code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCurrencyCopyWith<$Res>
    implements $DataCurrencyCopyWith<$Res> {
  factory _$$_DataCurrencyCopyWith(
          _$_DataCurrency value, $Res Function(_$_DataCurrency) then) =
      __$$_DataCurrencyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String short_title, String short_code});
}

/// @nodoc
class __$$_DataCurrencyCopyWithImpl<$Res>
    extends _$DataCurrencyCopyWithImpl<$Res, _$_DataCurrency>
    implements _$$_DataCurrencyCopyWith<$Res> {
  __$$_DataCurrencyCopyWithImpl(
      _$_DataCurrency _value, $Res Function(_$_DataCurrency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? short_title = null,
    Object? short_code = null,
  }) {
    return _then(_$_DataCurrency(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      short_title: null == short_title
          ? _value.short_title
          : short_title // ignore: cast_nullable_to_non_nullable
              as String,
      short_code: null == short_code
          ? _value.short_code
          : short_code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataCurrency implements _DataCurrency {
  const _$_DataCurrency(
      {required this.id,
      required this.title,
      required this.short_title,
      required this.short_code});

  factory _$_DataCurrency.fromJson(Map<String, dynamic> json) =>
      _$$_DataCurrencyFromJson(json);

  @override
  final int id;
  @override
  final String title;
// ignore: non_constant_identifier_names
  @override
  final String short_title;
// ignore: non_constant_identifier_names
  @override
  final String short_code;

  @override
  String toString() {
    return 'DataCurrency(id: $id, title: $title, short_title: $short_title, short_code: $short_code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataCurrency &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.short_title, short_title) ||
                other.short_title == short_title) &&
            (identical(other.short_code, short_code) ||
                other.short_code == short_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, short_title, short_code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCurrencyCopyWith<_$_DataCurrency> get copyWith =>
      __$$_DataCurrencyCopyWithImpl<_$_DataCurrency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataCurrencyToJson(
      this,
    );
  }
}

abstract class _DataCurrency implements DataCurrency {
  const factory _DataCurrency(
      {required final int id,
      required final String title,
      required final String short_title,
      required final String short_code}) = _$_DataCurrency;

  factory _DataCurrency.fromJson(Map<String, dynamic> json) =
      _$_DataCurrency.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override // ignore: non_constant_identifier_names
  String get short_title;
  @override // ignore: non_constant_identifier_names
  String get short_code;
  @override
  @JsonKey(ignore: true)
  _$$_DataCurrencyCopyWith<_$_DataCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}
