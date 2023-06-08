// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_reservation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataReservationResponse _$DataReservationResponseFromJson(
    Map<String, dynamic> json) {
  return _DataReservationResponse.fromJson(json);
}

/// @nodoc
mixin _$DataReservationResponse {
// ignore: non_constant_identifier_names
  String get res_id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  ClientInfo get client_info =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  DlInfo get dl_info =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  PassportInfo get passport_info =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get flight_number =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  PaymentInfo get payment_info => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get lng =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get booking_date => throw _privateConstructorUsedError;
  Details get details =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get supplier_res_id => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataReservationResponseCopyWith<DataReservationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataReservationResponseCopyWith<$Res> {
  factory $DataReservationResponseCopyWith(DataReservationResponse value,
          $Res Function(DataReservationResponse) then) =
      _$DataReservationResponseCopyWithImpl<$Res, DataReservationResponse>;
  @useResult
  $Res call(
      {String res_id,
      ClientInfo client_info,
      DlInfo dl_info,
      PassportInfo passport_info,
      String flight_number,
      PaymentInfo payment_info,
      String comment,
      String lng,
      String booking_date,
      Details details,
      String supplier_res_id,
      int status});

  $ClientInfoCopyWith<$Res> get client_info;
  $DlInfoCopyWith<$Res> get dl_info;
  $PassportInfoCopyWith<$Res> get passport_info;
  $PaymentInfoCopyWith<$Res> get payment_info;
  $DetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$DataReservationResponseCopyWithImpl<$Res,
        $Val extends DataReservationResponse>
    implements $DataReservationResponseCopyWith<$Res> {
  _$DataReservationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? res_id = null,
    Object? client_info = null,
    Object? dl_info = null,
    Object? passport_info = null,
    Object? flight_number = null,
    Object? payment_info = null,
    Object? comment = null,
    Object? lng = null,
    Object? booking_date = null,
    Object? details = null,
    Object? supplier_res_id = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      res_id: null == res_id
          ? _value.res_id
          : res_id // ignore: cast_nullable_to_non_nullable
              as String,
      client_info: null == client_info
          ? _value.client_info
          : client_info // ignore: cast_nullable_to_non_nullable
              as ClientInfo,
      dl_info: null == dl_info
          ? _value.dl_info
          : dl_info // ignore: cast_nullable_to_non_nullable
              as DlInfo,
      passport_info: null == passport_info
          ? _value.passport_info
          : passport_info // ignore: cast_nullable_to_non_nullable
              as PassportInfo,
      flight_number: null == flight_number
          ? _value.flight_number
          : flight_number // ignore: cast_nullable_to_non_nullable
              as String,
      payment_info: null == payment_info
          ? _value.payment_info
          : payment_info // ignore: cast_nullable_to_non_nullable
              as PaymentInfo,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      booking_date: null == booking_date
          ? _value.booking_date
          : booking_date // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details,
      supplier_res_id: null == supplier_res_id
          ? _value.supplier_res_id
          : supplier_res_id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientInfoCopyWith<$Res> get client_info {
    return $ClientInfoCopyWith<$Res>(_value.client_info, (value) {
      return _then(_value.copyWith(client_info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlInfoCopyWith<$Res> get dl_info {
    return $DlInfoCopyWith<$Res>(_value.dl_info, (value) {
      return _then(_value.copyWith(dl_info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PassportInfoCopyWith<$Res> get passport_info {
    return $PassportInfoCopyWith<$Res>(_value.passport_info, (value) {
      return _then(_value.copyWith(passport_info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentInfoCopyWith<$Res> get payment_info {
    return $PaymentInfoCopyWith<$Res>(_value.payment_info, (value) {
      return _then(_value.copyWith(payment_info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsCopyWith<$Res> get details {
    return $DetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataReservationResponseCopyWith<$Res>
    implements $DataReservationResponseCopyWith<$Res> {
  factory _$$_DataReservationResponseCopyWith(_$_DataReservationResponse value,
          $Res Function(_$_DataReservationResponse) then) =
      __$$_DataReservationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String res_id,
      ClientInfo client_info,
      DlInfo dl_info,
      PassportInfo passport_info,
      String flight_number,
      PaymentInfo payment_info,
      String comment,
      String lng,
      String booking_date,
      Details details,
      String supplier_res_id,
      int status});

  @override
  $ClientInfoCopyWith<$Res> get client_info;
  @override
  $DlInfoCopyWith<$Res> get dl_info;
  @override
  $PassportInfoCopyWith<$Res> get passport_info;
  @override
  $PaymentInfoCopyWith<$Res> get payment_info;
  @override
  $DetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$_DataReservationResponseCopyWithImpl<$Res>
    extends _$DataReservationResponseCopyWithImpl<$Res,
        _$_DataReservationResponse>
    implements _$$_DataReservationResponseCopyWith<$Res> {
  __$$_DataReservationResponseCopyWithImpl(_$_DataReservationResponse _value,
      $Res Function(_$_DataReservationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? res_id = null,
    Object? client_info = null,
    Object? dl_info = null,
    Object? passport_info = null,
    Object? flight_number = null,
    Object? payment_info = null,
    Object? comment = null,
    Object? lng = null,
    Object? booking_date = null,
    Object? details = null,
    Object? supplier_res_id = null,
    Object? status = null,
  }) {
    return _then(_$_DataReservationResponse(
      res_id: null == res_id
          ? _value.res_id
          : res_id // ignore: cast_nullable_to_non_nullable
              as String,
      client_info: null == client_info
          ? _value.client_info
          : client_info // ignore: cast_nullable_to_non_nullable
              as ClientInfo,
      dl_info: null == dl_info
          ? _value.dl_info
          : dl_info // ignore: cast_nullable_to_non_nullable
              as DlInfo,
      passport_info: null == passport_info
          ? _value.passport_info
          : passport_info // ignore: cast_nullable_to_non_nullable
              as PassportInfo,
      flight_number: null == flight_number
          ? _value.flight_number
          : flight_number // ignore: cast_nullable_to_non_nullable
              as String,
      payment_info: null == payment_info
          ? _value.payment_info
          : payment_info // ignore: cast_nullable_to_non_nullable
              as PaymentInfo,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      booking_date: null == booking_date
          ? _value.booking_date
          : booking_date // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details,
      supplier_res_id: null == supplier_res_id
          ? _value.supplier_res_id
          : supplier_res_id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataReservationResponse implements _DataReservationResponse {
  const _$_DataReservationResponse(
      {required this.res_id,
      required this.client_info,
      required this.dl_info,
      required this.passport_info,
      required this.flight_number,
      required this.payment_info,
      required this.comment,
      required this.lng,
      required this.booking_date,
      required this.details,
      required this.supplier_res_id,
      required this.status});

  factory _$_DataReservationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DataReservationResponseFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final String res_id;
// ignore: non_constant_identifier_names
  @override
  final ClientInfo client_info;
// ignore: non_constant_identifier_names
  @override
  final DlInfo dl_info;
// ignore: non_constant_identifier_names
  @override
  final PassportInfo passport_info;
// ignore: non_constant_identifier_names
  @override
  final String flight_number;
// ignore: non_constant_identifier_names
  @override
  final PaymentInfo payment_info;
  @override
  final String comment;
  @override
  final String lng;
// ignore: non_constant_identifier_names
  @override
  final String booking_date;
  @override
  final Details details;
// ignore: non_constant_identifier_names
  @override
  final String supplier_res_id;
  @override
  final int status;

  @override
  String toString() {
    return 'DataReservationResponse(res_id: $res_id, client_info: $client_info, dl_info: $dl_info, passport_info: $passport_info, flight_number: $flight_number, payment_info: $payment_info, comment: $comment, lng: $lng, booking_date: $booking_date, details: $details, supplier_res_id: $supplier_res_id, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataReservationResponse &&
            (identical(other.res_id, res_id) || other.res_id == res_id) &&
            (identical(other.client_info, client_info) ||
                other.client_info == client_info) &&
            (identical(other.dl_info, dl_info) || other.dl_info == dl_info) &&
            (identical(other.passport_info, passport_info) ||
                other.passport_info == passport_info) &&
            (identical(other.flight_number, flight_number) ||
                other.flight_number == flight_number) &&
            (identical(other.payment_info, payment_info) ||
                other.payment_info == payment_info) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.booking_date, booking_date) ||
                other.booking_date == booking_date) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.supplier_res_id, supplier_res_id) ||
                other.supplier_res_id == supplier_res_id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      res_id,
      client_info,
      dl_info,
      passport_info,
      flight_number,
      payment_info,
      comment,
      lng,
      booking_date,
      details,
      supplier_res_id,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataReservationResponseCopyWith<_$_DataReservationResponse>
      get copyWith =>
          __$$_DataReservationResponseCopyWithImpl<_$_DataReservationResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataReservationResponseToJson(
      this,
    );
  }
}

abstract class _DataReservationResponse implements DataReservationResponse {
  const factory _DataReservationResponse(
      {required final String res_id,
      required final ClientInfo client_info,
      required final DlInfo dl_info,
      required final PassportInfo passport_info,
      required final String flight_number,
      required final PaymentInfo payment_info,
      required final String comment,
      required final String lng,
      required final String booking_date,
      required final Details details,
      required final String supplier_res_id,
      required final int status}) = _$_DataReservationResponse;

  factory _DataReservationResponse.fromJson(Map<String, dynamic> json) =
      _$_DataReservationResponse.fromJson;

  @override // ignore: non_constant_identifier_names
  String get res_id;
  @override // ignore: non_constant_identifier_names
  ClientInfo get client_info;
  @override // ignore: non_constant_identifier_names
  DlInfo get dl_info;
  @override // ignore: non_constant_identifier_names
  PassportInfo get passport_info;
  @override // ignore: non_constant_identifier_names
  String get flight_number;
  @override // ignore: non_constant_identifier_names
  PaymentInfo get payment_info;
  @override
  String get comment;
  @override
  String get lng;
  @override // ignore: non_constant_identifier_names
  String get booking_date;
  @override
  Details get details;
  @override // ignore: non_constant_identifier_names
  String get supplier_res_id;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_DataReservationResponseCopyWith<_$_DataReservationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

ClientInfo _$ClientInfoFromJson(Map<String, dynamic> json) {
  return _ClientInfo.fromJson(json);
}

/// @nodoc
mixin _$ClientInfo {
// ignore: non_constant_identifier_names
  String get first_name =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get last_name => throw _privateConstructorUsedError;
  String? get patronymic => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get email =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get post_code => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientInfoCopyWith<ClientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientInfoCopyWith<$Res> {
  factory $ClientInfoCopyWith(
          ClientInfo value, $Res Function(ClientInfo) then) =
      _$ClientInfoCopyWithImpl<$Res, ClientInfo>;
  @useResult
  $Res call(
      {String first_name,
      String last_name,
      String? patronymic,
      String? phone,
      String email,
      String? post_code,
      String? country,
      String? city,
      String? address,
      String? birthday});
}

/// @nodoc
class _$ClientInfoCopyWithImpl<$Res, $Val extends ClientInfo>
    implements $ClientInfoCopyWith<$Res> {
  _$ClientInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = null,
    Object? last_name = null,
    Object? patronymic = freezed,
    Object? phone = freezed,
    Object? email = null,
    Object? post_code = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? birthday = freezed,
  }) {
    return _then(_value.copyWith(
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      post_code: freezed == post_code
          ? _value.post_code
          : post_code // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientInfoCopyWith<$Res>
    implements $ClientInfoCopyWith<$Res> {
  factory _$$_ClientInfoCopyWith(
          _$_ClientInfo value, $Res Function(_$_ClientInfo) then) =
      __$$_ClientInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String first_name,
      String last_name,
      String? patronymic,
      String? phone,
      String email,
      String? post_code,
      String? country,
      String? city,
      String? address,
      String? birthday});
}

/// @nodoc
class __$$_ClientInfoCopyWithImpl<$Res>
    extends _$ClientInfoCopyWithImpl<$Res, _$_ClientInfo>
    implements _$$_ClientInfoCopyWith<$Res> {
  __$$_ClientInfoCopyWithImpl(
      _$_ClientInfo _value, $Res Function(_$_ClientInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = null,
    Object? last_name = null,
    Object? patronymic = freezed,
    Object? phone = freezed,
    Object? email = null,
    Object? post_code = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? birthday = freezed,
  }) {
    return _then(_$_ClientInfo(
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      post_code: freezed == post_code
          ? _value.post_code
          : post_code // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientInfo implements _ClientInfo {
  const _$_ClientInfo(
      {required this.first_name,
      required this.last_name,
      this.patronymic,
      this.phone,
      required this.email,
      this.post_code,
      this.country,
      this.city,
      this.address,
      this.birthday});

  factory _$_ClientInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ClientInfoFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final String first_name;
// ignore: non_constant_identifier_names
  @override
  final String last_name;
  @override
  final String? patronymic;
  @override
  final String? phone;
  @override
  final String email;
// ignore: non_constant_identifier_names
  @override
  final String? post_code;
  @override
  final String? country;
  @override
  final String? city;
  @override
  final String? address;
  @override
  final String? birthday;

  @override
  String toString() {
    return 'ClientInfo(first_name: $first_name, last_name: $last_name, patronymic: $patronymic, phone: $phone, email: $email, post_code: $post_code, country: $country, city: $city, address: $address, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientInfo &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.post_code, post_code) ||
                other.post_code == post_code) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first_name, last_name,
      patronymic, phone, email, post_code, country, city, address, birthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientInfoCopyWith<_$_ClientInfo> get copyWith =>
      __$$_ClientInfoCopyWithImpl<_$_ClientInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientInfoToJson(
      this,
    );
  }
}

abstract class _ClientInfo implements ClientInfo {
  const factory _ClientInfo(
      {required final String first_name,
      required final String last_name,
      final String? patronymic,
      final String? phone,
      required final String email,
      final String? post_code,
      final String? country,
      final String? city,
      final String? address,
      final String? birthday}) = _$_ClientInfo;

  factory _ClientInfo.fromJson(Map<String, dynamic> json) =
      _$_ClientInfo.fromJson;

  @override // ignore: non_constant_identifier_names
  String get first_name;
  @override // ignore: non_constant_identifier_names
  String get last_name;
  @override
  String? get patronymic;
  @override
  String? get phone;
  @override
  String get email;
  @override // ignore: non_constant_identifier_names
  String? get post_code;
  @override
  String? get country;
  @override
  String? get city;
  @override
  String? get address;
  @override
  String? get birthday;
  @override
  @JsonKey(ignore: true)
  _$$_ClientInfoCopyWith<_$_ClientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

DlInfo _$DlInfoFromJson(Map<String, dynamic> json) {
  return _DlInfo.fromJson(json);
}

/// @nodoc
mixin _$DlInfo {
  String? get number => throw _privateConstructorUsedError;
  String? get country =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get expiration_date =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get issue_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlInfoCopyWith<DlInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlInfoCopyWith<$Res> {
  factory $DlInfoCopyWith(DlInfo value, $Res Function(DlInfo) then) =
      _$DlInfoCopyWithImpl<$Res, DlInfo>;
  @useResult
  $Res call(
      {String? number,
      String? country,
      String? expiration_date,
      String? issue_date});
}

/// @nodoc
class _$DlInfoCopyWithImpl<$Res, $Val extends DlInfo>
    implements $DlInfoCopyWith<$Res> {
  _$DlInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? country = freezed,
    Object? expiration_date = freezed,
    Object? issue_date = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      expiration_date: freezed == expiration_date
          ? _value.expiration_date
          : expiration_date // ignore: cast_nullable_to_non_nullable
              as String?,
      issue_date: freezed == issue_date
          ? _value.issue_date
          : issue_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DlInfoCopyWith<$Res> implements $DlInfoCopyWith<$Res> {
  factory _$$_DlInfoCopyWith(_$_DlInfo value, $Res Function(_$_DlInfo) then) =
      __$$_DlInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? number,
      String? country,
      String? expiration_date,
      String? issue_date});
}

/// @nodoc
class __$$_DlInfoCopyWithImpl<$Res>
    extends _$DlInfoCopyWithImpl<$Res, _$_DlInfo>
    implements _$$_DlInfoCopyWith<$Res> {
  __$$_DlInfoCopyWithImpl(_$_DlInfo _value, $Res Function(_$_DlInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? country = freezed,
    Object? expiration_date = freezed,
    Object? issue_date = freezed,
  }) {
    return _then(_$_DlInfo(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      expiration_date: freezed == expiration_date
          ? _value.expiration_date
          : expiration_date // ignore: cast_nullable_to_non_nullable
              as String?,
      issue_date: freezed == issue_date
          ? _value.issue_date
          : issue_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlInfo implements _DlInfo {
  const _$_DlInfo(
      {this.number, this.country, this.expiration_date, this.issue_date});

  factory _$_DlInfo.fromJson(Map<String, dynamic> json) =>
      _$$_DlInfoFromJson(json);

  @override
  final String? number;
  @override
  final String? country;
// ignore: non_constant_identifier_names
  @override
  final String? expiration_date;
// ignore: non_constant_identifier_names
  @override
  final String? issue_date;

  @override
  String toString() {
    return 'DlInfo(number: $number, country: $country, expiration_date: $expiration_date, issue_date: $issue_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlInfo &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.expiration_date, expiration_date) ||
                other.expiration_date == expiration_date) &&
            (identical(other.issue_date, issue_date) ||
                other.issue_date == issue_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, number, country, expiration_date, issue_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlInfoCopyWith<_$_DlInfo> get copyWith =>
      __$$_DlInfoCopyWithImpl<_$_DlInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlInfoToJson(
      this,
    );
  }
}

abstract class _DlInfo implements DlInfo {
  const factory _DlInfo(
      {final String? number,
      final String? country,
      final String? expiration_date,
      final String? issue_date}) = _$_DlInfo;

  factory _DlInfo.fromJson(Map<String, dynamic> json) = _$_DlInfo.fromJson;

  @override
  String? get number;
  @override
  String? get country;
  @override // ignore: non_constant_identifier_names
  String? get expiration_date;
  @override // ignore: non_constant_identifier_names
  String? get issue_date;
  @override
  @JsonKey(ignore: true)
  _$$_DlInfoCopyWith<_$_DlInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

PassportInfo _$PassportInfoFromJson(Map<String, dynamic> json) {
  return _PassportInfo.fromJson(json);
}

/// @nodoc
mixin _$PassportInfo {
  String get number => throw _privateConstructorUsedError;
  String get country =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get expiration_date =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get issue_date => throw _privateConstructorUsedError;
  String get issue =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get birth_place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportInfoCopyWith<PassportInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportInfoCopyWith<$Res> {
  factory $PassportInfoCopyWith(
          PassportInfo value, $Res Function(PassportInfo) then) =
      _$PassportInfoCopyWithImpl<$Res, PassportInfo>;
  @useResult
  $Res call(
      {String number,
      String country,
      String expiration_date,
      String issue_date,
      String issue,
      String? birth_place});
}

/// @nodoc
class _$PassportInfoCopyWithImpl<$Res, $Val extends PassportInfo>
    implements $PassportInfoCopyWith<$Res> {
  _$PassportInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? country = null,
    Object? expiration_date = null,
    Object? issue_date = null,
    Object? issue = null,
    Object? birth_place = freezed,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      expiration_date: null == expiration_date
          ? _value.expiration_date
          : expiration_date // ignore: cast_nullable_to_non_nullable
              as String,
      issue_date: null == issue_date
          ? _value.issue_date
          : issue_date // ignore: cast_nullable_to_non_nullable
              as String,
      issue: null == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String,
      birth_place: freezed == birth_place
          ? _value.birth_place
          : birth_place // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PassportInfoCopyWith<$Res>
    implements $PassportInfoCopyWith<$Res> {
  factory _$$_PassportInfoCopyWith(
          _$_PassportInfo value, $Res Function(_$_PassportInfo) then) =
      __$$_PassportInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String number,
      String country,
      String expiration_date,
      String issue_date,
      String issue,
      String? birth_place});
}

/// @nodoc
class __$$_PassportInfoCopyWithImpl<$Res>
    extends _$PassportInfoCopyWithImpl<$Res, _$_PassportInfo>
    implements _$$_PassportInfoCopyWith<$Res> {
  __$$_PassportInfoCopyWithImpl(
      _$_PassportInfo _value, $Res Function(_$_PassportInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? country = null,
    Object? expiration_date = null,
    Object? issue_date = null,
    Object? issue = null,
    Object? birth_place = freezed,
  }) {
    return _then(_$_PassportInfo(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      expiration_date: null == expiration_date
          ? _value.expiration_date
          : expiration_date // ignore: cast_nullable_to_non_nullable
              as String,
      issue_date: null == issue_date
          ? _value.issue_date
          : issue_date // ignore: cast_nullable_to_non_nullable
              as String,
      issue: null == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String,
      birth_place: freezed == birth_place
          ? _value.birth_place
          : birth_place // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PassportInfo implements _PassportInfo {
  const _$_PassportInfo(
      {required this.number,
      required this.country,
      required this.expiration_date,
      required this.issue_date,
      required this.issue,
      this.birth_place});

  factory _$_PassportInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PassportInfoFromJson(json);

  @override
  final String number;
  @override
  final String country;
// ignore: non_constant_identifier_names
  @override
  final String expiration_date;
// ignore: non_constant_identifier_names
  @override
  final String issue_date;
  @override
  final String issue;
// ignore: non_constant_identifier_names
  @override
  final String? birth_place;

  @override
  String toString() {
    return 'PassportInfo(number: $number, country: $country, expiration_date: $expiration_date, issue_date: $issue_date, issue: $issue, birth_place: $birth_place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassportInfo &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.expiration_date, expiration_date) ||
                other.expiration_date == expiration_date) &&
            (identical(other.issue_date, issue_date) ||
                other.issue_date == issue_date) &&
            (identical(other.issue, issue) || other.issue == issue) &&
            (identical(other.birth_place, birth_place) ||
                other.birth_place == birth_place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, country, expiration_date,
      issue_date, issue, birth_place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassportInfoCopyWith<_$_PassportInfo> get copyWith =>
      __$$_PassportInfoCopyWithImpl<_$_PassportInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassportInfoToJson(
      this,
    );
  }
}

abstract class _PassportInfo implements PassportInfo {
  const factory _PassportInfo(
      {required final String number,
      required final String country,
      required final String expiration_date,
      required final String issue_date,
      required final String issue,
      final String? birth_place}) = _$_PassportInfo;

  factory _PassportInfo.fromJson(Map<String, dynamic> json) =
      _$_PassportInfo.fromJson;

  @override
  String get number;
  @override
  String get country;
  @override // ignore: non_constant_identifier_names
  String get expiration_date;
  @override // ignore: non_constant_identifier_names
  String get issue_date;
  @override
  String get issue;
  @override // ignore: non_constant_identifier_names
  String? get birth_place;
  @override
  @JsonKey(ignore: true)
  _$$_PassportInfoCopyWith<_$_PassportInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentInfo _$PaymentInfoFromJson(Map<String, dynamic> json) {
  return _PaymentInfo.fromJson(json);
}

/// @nodoc
mixin _$PaymentInfo {
// ignore: non_constant_identifier_names
  String get card_number =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get card_holder =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get card_expiration =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get card_type => throw _privateConstructorUsedError;
  int get cvv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentInfoCopyWith<PaymentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInfoCopyWith<$Res> {
  factory $PaymentInfoCopyWith(
          PaymentInfo value, $Res Function(PaymentInfo) then) =
      _$PaymentInfoCopyWithImpl<$Res, PaymentInfo>;
  @useResult
  $Res call(
      {String card_number,
      String card_holder,
      String card_expiration,
      String card_type,
      int cvv});
}

/// @nodoc
class _$PaymentInfoCopyWithImpl<$Res, $Val extends PaymentInfo>
    implements $PaymentInfoCopyWith<$Res> {
  _$PaymentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card_number = null,
    Object? card_holder = null,
    Object? card_expiration = null,
    Object? card_type = null,
    Object? cvv = null,
  }) {
    return _then(_value.copyWith(
      card_number: null == card_number
          ? _value.card_number
          : card_number // ignore: cast_nullable_to_non_nullable
              as String,
      card_holder: null == card_holder
          ? _value.card_holder
          : card_holder // ignore: cast_nullable_to_non_nullable
              as String,
      card_expiration: null == card_expiration
          ? _value.card_expiration
          : card_expiration // ignore: cast_nullable_to_non_nullable
              as String,
      card_type: null == card_type
          ? _value.card_type
          : card_type // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentInfoCopyWith<$Res>
    implements $PaymentInfoCopyWith<$Res> {
  factory _$$_PaymentInfoCopyWith(
          _$_PaymentInfo value, $Res Function(_$_PaymentInfo) then) =
      __$$_PaymentInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String card_number,
      String card_holder,
      String card_expiration,
      String card_type,
      int cvv});
}

/// @nodoc
class __$$_PaymentInfoCopyWithImpl<$Res>
    extends _$PaymentInfoCopyWithImpl<$Res, _$_PaymentInfo>
    implements _$$_PaymentInfoCopyWith<$Res> {
  __$$_PaymentInfoCopyWithImpl(
      _$_PaymentInfo _value, $Res Function(_$_PaymentInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card_number = null,
    Object? card_holder = null,
    Object? card_expiration = null,
    Object? card_type = null,
    Object? cvv = null,
  }) {
    return _then(_$_PaymentInfo(
      card_number: null == card_number
          ? _value.card_number
          : card_number // ignore: cast_nullable_to_non_nullable
              as String,
      card_holder: null == card_holder
          ? _value.card_holder
          : card_holder // ignore: cast_nullable_to_non_nullable
              as String,
      card_expiration: null == card_expiration
          ? _value.card_expiration
          : card_expiration // ignore: cast_nullable_to_non_nullable
              as String,
      card_type: null == card_type
          ? _value.card_type
          : card_type // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentInfo implements _PaymentInfo {
  const _$_PaymentInfo(
      {required this.card_number,
      required this.card_holder,
      required this.card_expiration,
      required this.card_type,
      required this.cvv});

  factory _$_PaymentInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentInfoFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final String card_number;
// ignore: non_constant_identifier_names
  @override
  final String card_holder;
// ignore: non_constant_identifier_names
  @override
  final String card_expiration;
// ignore: non_constant_identifier_names
  @override
  final String card_type;
  @override
  final int cvv;

  @override
  String toString() {
    return 'PaymentInfo(card_number: $card_number, card_holder: $card_holder, card_expiration: $card_expiration, card_type: $card_type, cvv: $cvv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentInfo &&
            (identical(other.card_number, card_number) ||
                other.card_number == card_number) &&
            (identical(other.card_holder, card_holder) ||
                other.card_holder == card_holder) &&
            (identical(other.card_expiration, card_expiration) ||
                other.card_expiration == card_expiration) &&
            (identical(other.card_type, card_type) ||
                other.card_type == card_type) &&
            (identical(other.cvv, cvv) || other.cvv == cvv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, card_number, card_holder, card_expiration, card_type, cvv);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentInfoCopyWith<_$_PaymentInfo> get copyWith =>
      __$$_PaymentInfoCopyWithImpl<_$_PaymentInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentInfoToJson(
      this,
    );
  }
}

abstract class _PaymentInfo implements PaymentInfo {
  const factory _PaymentInfo(
      {required final String card_number,
      required final String card_holder,
      required final String card_expiration,
      required final String card_type,
      required final int cvv}) = _$_PaymentInfo;

  factory _PaymentInfo.fromJson(Map<String, dynamic> json) =
      _$_PaymentInfo.fromJson;

  @override // ignore: non_constant_identifier_names
  String get card_number;
  @override // ignore: non_constant_identifier_names
  String get card_holder;
  @override // ignore: non_constant_identifier_names
  String get card_expiration;
  @override // ignore: non_constant_identifier_names
  String get card_type;
  @override
  int get cvv;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentInfoCopyWith<_$_PaymentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return _Details.fromJson(json);
}

/// @nodoc
mixin _$Details {
  DataStation get pickup => throw _privateConstructorUsedError;
  DataStation get dropoff => throw _privateConstructorUsedError;
  DataCar get car => throw _privateConstructorUsedError;
  DataCurrency get currency =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get pickup_date =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get dropoff_date => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;
  PromoRes? get p => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsCopyWith<Details> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res, Details>;
  @useResult
  $Res call(
      {DataStation pickup,
      DataStation dropoff,
      DataCar car,
      DataCurrency currency,
      String pickup_date,
      String dropoff_date,
      int days,
      PromoRes? p});

  $DataStationCopyWith<$Res> get pickup;
  $DataStationCopyWith<$Res> get dropoff;
  $DataCarCopyWith<$Res> get car;
  $DataCurrencyCopyWith<$Res> get currency;
  $PromoResCopyWith<$Res>? get p;
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res, $Val extends Details>
    implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickup = null,
    Object? dropoff = null,
    Object? car = null,
    Object? currency = null,
    Object? pickup_date = null,
    Object? dropoff_date = null,
    Object? days = null,
    Object? p = freezed,
  }) {
    return _then(_value.copyWith(
      pickup: null == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as DataStation,
      dropoff: null == dropoff
          ? _value.dropoff
          : dropoff // ignore: cast_nullable_to_non_nullable
              as DataStation,
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as DataCar,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as DataCurrency,
      pickup_date: null == pickup_date
          ? _value.pickup_date
          : pickup_date // ignore: cast_nullable_to_non_nullable
              as String,
      dropoff_date: null == dropoff_date
          ? _value.dropoff_date
          : dropoff_date // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      p: freezed == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as PromoRes?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataStationCopyWith<$Res> get pickup {
    return $DataStationCopyWith<$Res>(_value.pickup, (value) {
      return _then(_value.copyWith(pickup: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataStationCopyWith<$Res> get dropoff {
    return $DataStationCopyWith<$Res>(_value.dropoff, (value) {
      return _then(_value.copyWith(dropoff: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCarCopyWith<$Res> get car {
    return $DataCarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCurrencyCopyWith<$Res> get currency {
    return $DataCurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PromoResCopyWith<$Res>? get p {
    if (_value.p == null) {
      return null;
    }

    return $PromoResCopyWith<$Res>(_value.p!, (value) {
      return _then(_value.copyWith(p: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailsCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$$_DetailsCopyWith(
          _$_Details value, $Res Function(_$_Details) then) =
      __$$_DetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataStation pickup,
      DataStation dropoff,
      DataCar car,
      DataCurrency currency,
      String pickup_date,
      String dropoff_date,
      int days,
      PromoRes? p});

  @override
  $DataStationCopyWith<$Res> get pickup;
  @override
  $DataStationCopyWith<$Res> get dropoff;
  @override
  $DataCarCopyWith<$Res> get car;
  @override
  $DataCurrencyCopyWith<$Res> get currency;
  @override
  $PromoResCopyWith<$Res>? get p;
}

/// @nodoc
class __$$_DetailsCopyWithImpl<$Res>
    extends _$DetailsCopyWithImpl<$Res, _$_Details>
    implements _$$_DetailsCopyWith<$Res> {
  __$$_DetailsCopyWithImpl(_$_Details _value, $Res Function(_$_Details) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickup = null,
    Object? dropoff = null,
    Object? car = null,
    Object? currency = null,
    Object? pickup_date = null,
    Object? dropoff_date = null,
    Object? days = null,
    Object? p = freezed,
  }) {
    return _then(_$_Details(
      pickup: null == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as DataStation,
      dropoff: null == dropoff
          ? _value.dropoff
          : dropoff // ignore: cast_nullable_to_non_nullable
              as DataStation,
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as DataCar,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as DataCurrency,
      pickup_date: null == pickup_date
          ? _value.pickup_date
          : pickup_date // ignore: cast_nullable_to_non_nullable
              as String,
      dropoff_date: null == dropoff_date
          ? _value.dropoff_date
          : dropoff_date // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      p: freezed == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as PromoRes?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Details implements _Details {
  const _$_Details(
      {required this.pickup,
      required this.dropoff,
      required this.car,
      required this.currency,
      required this.pickup_date,
      required this.dropoff_date,
      required this.days,
      this.p});

  factory _$_Details.fromJson(Map<String, dynamic> json) =>
      _$$_DetailsFromJson(json);

  @override
  final DataStation pickup;
  @override
  final DataStation dropoff;
  @override
  final DataCar car;
  @override
  final DataCurrency currency;
// ignore: non_constant_identifier_names
  @override
  final String pickup_date;
// ignore: non_constant_identifier_names
  @override
  final String dropoff_date;
  @override
  final int days;
  @override
  final PromoRes? p;

  @override
  String toString() {
    return 'Details(pickup: $pickup, dropoff: $dropoff, car: $car, currency: $currency, pickup_date: $pickup_date, dropoff_date: $dropoff_date, days: $days, p: $p)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Details &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.dropoff, dropoff) || other.dropoff == dropoff) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.pickup_date, pickup_date) ||
                other.pickup_date == pickup_date) &&
            (identical(other.dropoff_date, dropoff_date) ||
                other.dropoff_date == dropoff_date) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.p, p) || other.p == p));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pickup, dropoff, car, currency,
      pickup_date, dropoff_date, days, p);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsCopyWith<_$_Details> get copyWith =>
      __$$_DetailsCopyWithImpl<_$_Details>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailsToJson(
      this,
    );
  }
}

abstract class _Details implements Details {
  const factory _Details(
      {required final DataStation pickup,
      required final DataStation dropoff,
      required final DataCar car,
      required final DataCurrency currency,
      required final String pickup_date,
      required final String dropoff_date,
      required final int days,
      final PromoRes? p}) = _$_Details;

  factory _Details.fromJson(Map<String, dynamic> json) = _$_Details.fromJson;

  @override
  DataStation get pickup;
  @override
  DataStation get dropoff;
  @override
  DataCar get car;
  @override
  DataCurrency get currency;
  @override // ignore: non_constant_identifier_names
  String get pickup_date;
  @override // ignore: non_constant_identifier_names
  String get dropoff_date;
  @override
  int get days;
  @override
  PromoRes? get p;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsCopyWith<_$_Details> get copyWith =>
      throw _privateConstructorUsedError;
}

PromoRes _$PromoResFromJson(Map<String, dynamic> json) {
  return _PromoRes.fromJson(json);
}

/// @nodoc
mixin _$PromoRes {
  String get codeval => throw _privateConstructorUsedError;
  String get titleval => throw _privateConstructorUsedError;
  String get descriptionval => throw _privateConstructorUsedError;
  int? get typeval => throw _privateConstructorUsedError;
  int? get valueval =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get sale_typeval =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get sale_valueval => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoResCopyWith<PromoRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoResCopyWith<$Res> {
  factory $PromoResCopyWith(PromoRes value, $Res Function(PromoRes) then) =
      _$PromoResCopyWithImpl<$Res, PromoRes>;
  @useResult
  $Res call(
      {String codeval,
      String titleval,
      String descriptionval,
      int? typeval,
      int? valueval,
      String? sale_typeval,
      String? sale_valueval});
}

/// @nodoc
class _$PromoResCopyWithImpl<$Res, $Val extends PromoRes>
    implements $PromoResCopyWith<$Res> {
  _$PromoResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeval = null,
    Object? titleval = null,
    Object? descriptionval = null,
    Object? typeval = freezed,
    Object? valueval = freezed,
    Object? sale_typeval = freezed,
    Object? sale_valueval = freezed,
  }) {
    return _then(_value.copyWith(
      codeval: null == codeval
          ? _value.codeval
          : codeval // ignore: cast_nullable_to_non_nullable
              as String,
      titleval: null == titleval
          ? _value.titleval
          : titleval // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionval: null == descriptionval
          ? _value.descriptionval
          : descriptionval // ignore: cast_nullable_to_non_nullable
              as String,
      typeval: freezed == typeval
          ? _value.typeval
          : typeval // ignore: cast_nullable_to_non_nullable
              as int?,
      valueval: freezed == valueval
          ? _value.valueval
          : valueval // ignore: cast_nullable_to_non_nullable
              as int?,
      sale_typeval: freezed == sale_typeval
          ? _value.sale_typeval
          : sale_typeval // ignore: cast_nullable_to_non_nullable
              as String?,
      sale_valueval: freezed == sale_valueval
          ? _value.sale_valueval
          : sale_valueval // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromoResCopyWith<$Res> implements $PromoResCopyWith<$Res> {
  factory _$$_PromoResCopyWith(
          _$_PromoRes value, $Res Function(_$_PromoRes) then) =
      __$$_PromoResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String codeval,
      String titleval,
      String descriptionval,
      int? typeval,
      int? valueval,
      String? sale_typeval,
      String? sale_valueval});
}

/// @nodoc
class __$$_PromoResCopyWithImpl<$Res>
    extends _$PromoResCopyWithImpl<$Res, _$_PromoRes>
    implements _$$_PromoResCopyWith<$Res> {
  __$$_PromoResCopyWithImpl(
      _$_PromoRes _value, $Res Function(_$_PromoRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeval = null,
    Object? titleval = null,
    Object? descriptionval = null,
    Object? typeval = freezed,
    Object? valueval = freezed,
    Object? sale_typeval = freezed,
    Object? sale_valueval = freezed,
  }) {
    return _then(_$_PromoRes(
      codeval: null == codeval
          ? _value.codeval
          : codeval // ignore: cast_nullable_to_non_nullable
              as String,
      titleval: null == titleval
          ? _value.titleval
          : titleval // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionval: null == descriptionval
          ? _value.descriptionval
          : descriptionval // ignore: cast_nullable_to_non_nullable
              as String,
      typeval: freezed == typeval
          ? _value.typeval
          : typeval // ignore: cast_nullable_to_non_nullable
              as int?,
      valueval: freezed == valueval
          ? _value.valueval
          : valueval // ignore: cast_nullable_to_non_nullable
              as int?,
      sale_typeval: freezed == sale_typeval
          ? _value.sale_typeval
          : sale_typeval // ignore: cast_nullable_to_non_nullable
              as String?,
      sale_valueval: freezed == sale_valueval
          ? _value.sale_valueval
          : sale_valueval // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromoRes implements _PromoRes {
  const _$_PromoRes(
      {required this.codeval,
      required this.titleval,
      required this.descriptionval,
      this.typeval,
      this.valueval,
      this.sale_typeval,
      this.sale_valueval});

  factory _$_PromoRes.fromJson(Map<String, dynamic> json) =>
      _$$_PromoResFromJson(json);

  @override
  final String codeval;
  @override
  final String titleval;
  @override
  final String descriptionval;
  @override
  final int? typeval;
  @override
  final int? valueval;
// ignore: non_constant_identifier_names
  @override
  final String? sale_typeval;
// ignore: non_constant_identifier_names
  @override
  final String? sale_valueval;

  @override
  String toString() {
    return 'PromoRes(codeval: $codeval, titleval: $titleval, descriptionval: $descriptionval, typeval: $typeval, valueval: $valueval, sale_typeval: $sale_typeval, sale_valueval: $sale_valueval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromoRes &&
            (identical(other.codeval, codeval) || other.codeval == codeval) &&
            (identical(other.titleval, titleval) ||
                other.titleval == titleval) &&
            (identical(other.descriptionval, descriptionval) ||
                other.descriptionval == descriptionval) &&
            (identical(other.typeval, typeval) || other.typeval == typeval) &&
            (identical(other.valueval, valueval) ||
                other.valueval == valueval) &&
            (identical(other.sale_typeval, sale_typeval) ||
                other.sale_typeval == sale_typeval) &&
            (identical(other.sale_valueval, sale_valueval) ||
                other.sale_valueval == sale_valueval));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codeval, titleval,
      descriptionval, typeval, valueval, sale_typeval, sale_valueval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromoResCopyWith<_$_PromoRes> get copyWith =>
      __$$_PromoResCopyWithImpl<_$_PromoRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromoResToJson(
      this,
    );
  }
}

abstract class _PromoRes implements PromoRes {
  const factory _PromoRes(
      {required final String codeval,
      required final String titleval,
      required final String descriptionval,
      final int? typeval,
      final int? valueval,
      final String? sale_typeval,
      final String? sale_valueval}) = _$_PromoRes;

  factory _PromoRes.fromJson(Map<String, dynamic> json) = _$_PromoRes.fromJson;

  @override
  String get codeval;
  @override
  String get titleval;
  @override
  String get descriptionval;
  @override
  int? get typeval;
  @override
  int? get valueval;
  @override // ignore: non_constant_identifier_names
  String? get sale_typeval;
  @override // ignore: non_constant_identifier_names
  String? get sale_valueval;
  @override
  @JsonKey(ignore: true)
  _$$_PromoResCopyWith<_$_PromoRes> get copyWith =>
      throw _privateConstructorUsedError;
}
