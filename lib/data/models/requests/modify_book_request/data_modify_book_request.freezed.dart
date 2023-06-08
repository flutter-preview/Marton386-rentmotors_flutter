// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_modify_book_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModifyBookRequest _$DataModifyBookRequestFromJson(
    Map<String, dynamic> json) {
  return _DataModifyBookRequest.fromJson(json);
}

/// @nodoc
mixin _$DataModifyBookRequest {
// ignore: non_constant_identifier_names
  String get res_id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get car_id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  ClientInfo get client_info =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get flight_number => throw _privateConstructorUsedError;
  List<OrderExtra> get extras => throw _privateConstructorUsedError;
  String get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModifyBookRequestCopyWith<DataModifyBookRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModifyBookRequestCopyWith<$Res> {
  factory $DataModifyBookRequestCopyWith(DataModifyBookRequest value,
          $Res Function(DataModifyBookRequest) then) =
      _$DataModifyBookRequestCopyWithImpl<$Res, DataModifyBookRequest>;
  @useResult
  $Res call(
      {String res_id,
      String car_id,
      ClientInfo client_info,
      String flight_number,
      List<OrderExtra> extras,
      String comments});

  $ClientInfoCopyWith<$Res> get client_info;
}

/// @nodoc
class _$DataModifyBookRequestCopyWithImpl<$Res,
        $Val extends DataModifyBookRequest>
    implements $DataModifyBookRequestCopyWith<$Res> {
  _$DataModifyBookRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? res_id = null,
    Object? car_id = null,
    Object? client_info = null,
    Object? flight_number = null,
    Object? extras = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      res_id: null == res_id
          ? _value.res_id
          : res_id // ignore: cast_nullable_to_non_nullable
              as String,
      car_id: null == car_id
          ? _value.car_id
          : car_id // ignore: cast_nullable_to_non_nullable
              as String,
      client_info: null == client_info
          ? _value.client_info
          : client_info // ignore: cast_nullable_to_non_nullable
              as ClientInfo,
      flight_number: null == flight_number
          ? _value.flight_number
          : flight_number // ignore: cast_nullable_to_non_nullable
              as String,
      extras: null == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<OrderExtra>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientInfoCopyWith<$Res> get client_info {
    return $ClientInfoCopyWith<$Res>(_value.client_info, (value) {
      return _then(_value.copyWith(client_info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataModifyBookRequestCopyWith<$Res>
    implements $DataModifyBookRequestCopyWith<$Res> {
  factory _$$_DataModifyBookRequestCopyWith(_$_DataModifyBookRequest value,
          $Res Function(_$_DataModifyBookRequest) then) =
      __$$_DataModifyBookRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String res_id,
      String car_id,
      ClientInfo client_info,
      String flight_number,
      List<OrderExtra> extras,
      String comments});

  @override
  $ClientInfoCopyWith<$Res> get client_info;
}

/// @nodoc
class __$$_DataModifyBookRequestCopyWithImpl<$Res>
    extends _$DataModifyBookRequestCopyWithImpl<$Res, _$_DataModifyBookRequest>
    implements _$$_DataModifyBookRequestCopyWith<$Res> {
  __$$_DataModifyBookRequestCopyWithImpl(_$_DataModifyBookRequest _value,
      $Res Function(_$_DataModifyBookRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? res_id = null,
    Object? car_id = null,
    Object? client_info = null,
    Object? flight_number = null,
    Object? extras = null,
    Object? comments = null,
  }) {
    return _then(_$_DataModifyBookRequest(
      res_id: null == res_id
          ? _value.res_id
          : res_id // ignore: cast_nullable_to_non_nullable
              as String,
      car_id: null == car_id
          ? _value.car_id
          : car_id // ignore: cast_nullable_to_non_nullable
              as String,
      client_info: null == client_info
          ? _value.client_info
          : client_info // ignore: cast_nullable_to_non_nullable
              as ClientInfo,
      flight_number: null == flight_number
          ? _value.flight_number
          : flight_number // ignore: cast_nullable_to_non_nullable
              as String,
      extras: null == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<OrderExtra>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModifyBookRequest implements _DataModifyBookRequest {
  const _$_DataModifyBookRequest(
      {required this.res_id,
      required this.car_id,
      required this.client_info,
      required this.flight_number,
      required final List<OrderExtra> extras,
      required this.comments})
      : _extras = extras;

  factory _$_DataModifyBookRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DataModifyBookRequestFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final String res_id;
// ignore: non_constant_identifier_names
  @override
  final String car_id;
// ignore: non_constant_identifier_names
  @override
  final ClientInfo client_info;
// ignore: non_constant_identifier_names
  @override
  final String flight_number;
  final List<OrderExtra> _extras;
  @override
  List<OrderExtra> get extras {
    if (_extras is EqualUnmodifiableListView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extras);
  }

  @override
  final String comments;

  @override
  String toString() {
    return 'DataModifyBookRequest(res_id: $res_id, car_id: $car_id, client_info: $client_info, flight_number: $flight_number, extras: $extras, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataModifyBookRequest &&
            (identical(other.res_id, res_id) || other.res_id == res_id) &&
            (identical(other.car_id, car_id) || other.car_id == car_id) &&
            (identical(other.client_info, client_info) ||
                other.client_info == client_info) &&
            (identical(other.flight_number, flight_number) ||
                other.flight_number == flight_number) &&
            const DeepCollectionEquality().equals(other._extras, _extras) &&
            (identical(other.comments, comments) ||
                other.comments == comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, res_id, car_id, client_info,
      flight_number, const DeepCollectionEquality().hash(_extras), comments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataModifyBookRequestCopyWith<_$_DataModifyBookRequest> get copyWith =>
      __$$_DataModifyBookRequestCopyWithImpl<_$_DataModifyBookRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModifyBookRequestToJson(
      this,
    );
  }
}

abstract class _DataModifyBookRequest implements DataModifyBookRequest {
  const factory _DataModifyBookRequest(
      {required final String res_id,
      required final String car_id,
      required final ClientInfo client_info,
      required final String flight_number,
      required final List<OrderExtra> extras,
      required final String comments}) = _$_DataModifyBookRequest;

  factory _DataModifyBookRequest.fromJson(Map<String, dynamic> json) =
      _$_DataModifyBookRequest.fromJson;

  @override // ignore: non_constant_identifier_names
  String get res_id;
  @override // ignore: non_constant_identifier_names
  String get car_id;
  @override // ignore: non_constant_identifier_names
  ClientInfo get client_info;
  @override // ignore: non_constant_identifier_names
  String get flight_number;
  @override
  List<OrderExtra> get extras;
  @override
  String get comments;
  @override
  @JsonKey(ignore: true)
  _$$_DataModifyBookRequestCopyWith<_$_DataModifyBookRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
