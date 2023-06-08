// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataBook _$DataBookFromJson(Map<String, dynamic> json) {
  return _DataBook.fromJson(json);
}

/// @nodoc
mixin _$DataBook {
// ignore: non_constant_identifier_names
  dynamic get res_id => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataBookCopyWith<DataBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBookCopyWith<$Res> {
  factory $DataBookCopyWith(DataBook value, $Res Function(DataBook) then) =
      _$DataBookCopyWithImpl<$Res, DataBook>;
  @useResult
  $Res call({dynamic res_id, int status});
}

/// @nodoc
class _$DataBookCopyWithImpl<$Res, $Val extends DataBook>
    implements $DataBookCopyWith<$Res> {
  _$DataBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? res_id = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      res_id: freezed == res_id
          ? _value.res_id
          : res_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataBookCopyWith<$Res> implements $DataBookCopyWith<$Res> {
  factory _$$_DataBookCopyWith(
          _$_DataBook value, $Res Function(_$_DataBook) then) =
      __$$_DataBookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic res_id, int status});
}

/// @nodoc
class __$$_DataBookCopyWithImpl<$Res>
    extends _$DataBookCopyWithImpl<$Res, _$_DataBook>
    implements _$$_DataBookCopyWith<$Res> {
  __$$_DataBookCopyWithImpl(
      _$_DataBook _value, $Res Function(_$_DataBook) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? res_id = freezed,
    Object? status = null,
  }) {
    return _then(_$_DataBook(
      res_id: freezed == res_id
          ? _value.res_id
          : res_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataBook implements _DataBook {
  const _$_DataBook({required this.res_id, required this.status});

  factory _$_DataBook.fromJson(Map<String, dynamic> json) =>
      _$$_DataBookFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final dynamic res_id;
  @override
  final int status;

  @override
  String toString() {
    return 'DataBook(res_id: $res_id, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataBook &&
            const DeepCollectionEquality().equals(other.res_id, res_id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(res_id), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataBookCopyWith<_$_DataBook> get copyWith =>
      __$$_DataBookCopyWithImpl<_$_DataBook>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataBookToJson(
      this,
    );
  }
}

abstract class _DataBook implements DataBook {
  const factory _DataBook(
      {required final dynamic res_id, required final int status}) = _$_DataBook;

  factory _DataBook.fromJson(Map<String, dynamic> json) = _$_DataBook.fromJson;

  @override // ignore: non_constant_identifier_names
  dynamic get res_id;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_DataBookCopyWith<_$_DataBook> get copyWith =>
      throw _privateConstructorUsedError;
}
