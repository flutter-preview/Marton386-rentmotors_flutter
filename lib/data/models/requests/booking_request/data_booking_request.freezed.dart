// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_booking_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataBookingRequest _$DataBookingRequestFromJson(Map<String, dynamic> json) {
  return _DataBookingRequest.fromJson(json);
}

/// @nodoc
mixin _$DataBookingRequest {
// ignore: non_constant_identifier_names
  String get car_id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  Client get client_info =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  Passport? get passport_info =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  DriverLicense? get dl_info => throw _privateConstructorUsedError;
  List<OrderExtra> get extras =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get flight_number => throw _privateConstructorUsedError;
  String get comments =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get new_client => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataBookingRequestCopyWith<DataBookingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBookingRequestCopyWith<$Res> {
  factory $DataBookingRequestCopyWith(
          DataBookingRequest value, $Res Function(DataBookingRequest) then) =
      _$DataBookingRequestCopyWithImpl<$Res, DataBookingRequest>;
  @useResult
  $Res call(
      {String car_id,
      Client client_info,
      Passport? passport_info,
      DriverLicense? dl_info,
      List<OrderExtra> extras,
      String flight_number,
      String comments,
      int new_client});

  $ClientCopyWith<$Res> get client_info;
  $PassportCopyWith<$Res>? get passport_info;
  $DriverLicenseCopyWith<$Res>? get dl_info;
}

/// @nodoc
class _$DataBookingRequestCopyWithImpl<$Res, $Val extends DataBookingRequest>
    implements $DataBookingRequestCopyWith<$Res> {
  _$DataBookingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car_id = null,
    Object? client_info = null,
    Object? passport_info = freezed,
    Object? dl_info = freezed,
    Object? extras = null,
    Object? flight_number = null,
    Object? comments = null,
    Object? new_client = null,
  }) {
    return _then(_value.copyWith(
      car_id: null == car_id
          ? _value.car_id
          : car_id // ignore: cast_nullable_to_non_nullable
              as String,
      client_info: null == client_info
          ? _value.client_info
          : client_info // ignore: cast_nullable_to_non_nullable
              as Client,
      passport_info: freezed == passport_info
          ? _value.passport_info
          : passport_info // ignore: cast_nullable_to_non_nullable
              as Passport?,
      dl_info: freezed == dl_info
          ? _value.dl_info
          : dl_info // ignore: cast_nullable_to_non_nullable
              as DriverLicense?,
      extras: null == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<OrderExtra>,
      flight_number: null == flight_number
          ? _value.flight_number
          : flight_number // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
      new_client: null == new_client
          ? _value.new_client
          : new_client // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client_info {
    return $ClientCopyWith<$Res>(_value.client_info, (value) {
      return _then(_value.copyWith(client_info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PassportCopyWith<$Res>? get passport_info {
    if (_value.passport_info == null) {
      return null;
    }

    return $PassportCopyWith<$Res>(_value.passport_info!, (value) {
      return _then(_value.copyWith(passport_info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverLicenseCopyWith<$Res>? get dl_info {
    if (_value.dl_info == null) {
      return null;
    }

    return $DriverLicenseCopyWith<$Res>(_value.dl_info!, (value) {
      return _then(_value.copyWith(dl_info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataBookingRequestCopyWith<$Res>
    implements $DataBookingRequestCopyWith<$Res> {
  factory _$$_DataBookingRequestCopyWith(_$_DataBookingRequest value,
          $Res Function(_$_DataBookingRequest) then) =
      __$$_DataBookingRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String car_id,
      Client client_info,
      Passport? passport_info,
      DriverLicense? dl_info,
      List<OrderExtra> extras,
      String flight_number,
      String comments,
      int new_client});

  @override
  $ClientCopyWith<$Res> get client_info;
  @override
  $PassportCopyWith<$Res>? get passport_info;
  @override
  $DriverLicenseCopyWith<$Res>? get dl_info;
}

/// @nodoc
class __$$_DataBookingRequestCopyWithImpl<$Res>
    extends _$DataBookingRequestCopyWithImpl<$Res, _$_DataBookingRequest>
    implements _$$_DataBookingRequestCopyWith<$Res> {
  __$$_DataBookingRequestCopyWithImpl(
      _$_DataBookingRequest _value, $Res Function(_$_DataBookingRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car_id = null,
    Object? client_info = null,
    Object? passport_info = freezed,
    Object? dl_info = freezed,
    Object? extras = null,
    Object? flight_number = null,
    Object? comments = null,
    Object? new_client = null,
  }) {
    return _then(_$_DataBookingRequest(
      car_id: null == car_id
          ? _value.car_id
          : car_id // ignore: cast_nullable_to_non_nullable
              as String,
      client_info: null == client_info
          ? _value.client_info
          : client_info // ignore: cast_nullable_to_non_nullable
              as Client,
      passport_info: freezed == passport_info
          ? _value.passport_info
          : passport_info // ignore: cast_nullable_to_non_nullable
              as Passport?,
      dl_info: freezed == dl_info
          ? _value.dl_info
          : dl_info // ignore: cast_nullable_to_non_nullable
              as DriverLicense?,
      extras: null == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<OrderExtra>,
      flight_number: null == flight_number
          ? _value.flight_number
          : flight_number // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
      new_client: null == new_client
          ? _value.new_client
          : new_client // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataBookingRequest implements _DataBookingRequest {
  const _$_DataBookingRequest(
      {required this.car_id,
      required this.client_info,
      this.passport_info,
      this.dl_info,
      required final List<OrderExtra> extras,
      required this.flight_number,
      required this.comments,
      required this.new_client})
      : _extras = extras;

  factory _$_DataBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DataBookingRequestFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final String car_id;
// ignore: non_constant_identifier_names
  @override
  final Client client_info;
// ignore: non_constant_identifier_names
  @override
  final Passport? passport_info;
// ignore: non_constant_identifier_names
  @override
  final DriverLicense? dl_info;
  final List<OrderExtra> _extras;
  @override
  List<OrderExtra> get extras {
    if (_extras is EqualUnmodifiableListView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extras);
  }

// ignore: non_constant_identifier_names
  @override
  final String flight_number;
  @override
  final String comments;
// ignore: non_constant_identifier_names
  @override
  final int new_client;

  @override
  String toString() {
    return 'DataBookingRequest(car_id: $car_id, client_info: $client_info, passport_info: $passport_info, dl_info: $dl_info, extras: $extras, flight_number: $flight_number, comments: $comments, new_client: $new_client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataBookingRequest &&
            (identical(other.car_id, car_id) || other.car_id == car_id) &&
            (identical(other.client_info, client_info) ||
                other.client_info == client_info) &&
            (identical(other.passport_info, passport_info) ||
                other.passport_info == passport_info) &&
            (identical(other.dl_info, dl_info) || other.dl_info == dl_info) &&
            const DeepCollectionEquality().equals(other._extras, _extras) &&
            (identical(other.flight_number, flight_number) ||
                other.flight_number == flight_number) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.new_client, new_client) ||
                other.new_client == new_client));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      car_id,
      client_info,
      passport_info,
      dl_info,
      const DeepCollectionEquality().hash(_extras),
      flight_number,
      comments,
      new_client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataBookingRequestCopyWith<_$_DataBookingRequest> get copyWith =>
      __$$_DataBookingRequestCopyWithImpl<_$_DataBookingRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataBookingRequestToJson(
      this,
    );
  }
}

abstract class _DataBookingRequest implements DataBookingRequest {
  const factory _DataBookingRequest(
      {required final String car_id,
      required final Client client_info,
      final Passport? passport_info,
      final DriverLicense? dl_info,
      required final List<OrderExtra> extras,
      required final String flight_number,
      required final String comments,
      required final int new_client}) = _$_DataBookingRequest;

  factory _DataBookingRequest.fromJson(Map<String, dynamic> json) =
      _$_DataBookingRequest.fromJson;

  @override // ignore: non_constant_identifier_names
  String get car_id;
  @override // ignore: non_constant_identifier_names
  Client get client_info;
  @override // ignore: non_constant_identifier_names
  Passport? get passport_info;
  @override // ignore: non_constant_identifier_names
  DriverLicense? get dl_info;
  @override
  List<OrderExtra> get extras;
  @override // ignore: non_constant_identifier_names
  String get flight_number;
  @override
  String get comments;
  @override // ignore: non_constant_identifier_names
  int get new_client;
  @override
  @JsonKey(ignore: true)
  _$$_DataBookingRequestCopyWith<_$_DataBookingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

Client _$ClientFromJson(Map<String, dynamic> json) {
  return _Client.fromJson(json);
}

/// @nodoc
mixin _$Client {
// ignore: non_constant_identifier_names
  String get first_name =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get last_name => throw _privateConstructorUsedError;
  String? get patronymic => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get birthday =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int? get client_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientCopyWith<Client> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCopyWith<$Res> {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) =
      _$ClientCopyWithImpl<$Res, Client>;
  @useResult
  $Res call(
      {String first_name,
      String last_name,
      String? patronymic,
      String? phone,
      String email,
      String? country,
      String? address,
      String? birthday,
      int? client_id});
}

/// @nodoc
class _$ClientCopyWithImpl<$Res, $Val extends Client>
    implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

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
    Object? country = freezed,
    Object? address = freezed,
    Object? birthday = freezed,
    Object? client_id = freezed,
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
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$$_ClientCopyWith(_$_Client value, $Res Function(_$_Client) then) =
      __$$_ClientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String first_name,
      String last_name,
      String? patronymic,
      String? phone,
      String email,
      String? country,
      String? address,
      String? birthday,
      int? client_id});
}

/// @nodoc
class __$$_ClientCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$_Client>
    implements _$$_ClientCopyWith<$Res> {
  __$$_ClientCopyWithImpl(_$_Client _value, $Res Function(_$_Client) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = null,
    Object? last_name = null,
    Object? patronymic = freezed,
    Object? phone = freezed,
    Object? email = null,
    Object? country = freezed,
    Object? address = freezed,
    Object? birthday = freezed,
    Object? client_id = freezed,
  }) {
    return _then(_$_Client(
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
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Client implements _Client {
  const _$_Client(
      {required this.first_name,
      required this.last_name,
      this.patronymic,
      this.phone,
      required this.email,
      this.country,
      this.address,
      this.birthday,
      this.client_id});

  factory _$_Client.fromJson(Map<String, dynamic> json) =>
      _$$_ClientFromJson(json);

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
  @override
  final String? country;
  @override
  final String? address;
  @override
  final String? birthday;
// ignore: non_constant_identifier_names
  @override
  final int? client_id;

  @override
  String toString() {
    return 'Client(first_name: $first_name, last_name: $last_name, patronymic: $patronymic, phone: $phone, email: $email, country: $country, address: $address, birthday: $birthday, client_id: $client_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Client &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.client_id, client_id) ||
                other.client_id == client_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first_name, last_name,
      patronymic, phone, email, country, address, birthday, client_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientCopyWith<_$_Client> get copyWith =>
      __$$_ClientCopyWithImpl<_$_Client>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientToJson(
      this,
    );
  }
}

abstract class _Client implements Client {
  const factory _Client(
      {required final String first_name,
      required final String last_name,
      final String? patronymic,
      final String? phone,
      required final String email,
      final String? country,
      final String? address,
      final String? birthday,
      final int? client_id}) = _$_Client;

  factory _Client.fromJson(Map<String, dynamic> json) = _$_Client.fromJson;

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
  @override
  String? get country;
  @override
  String? get address;
  @override
  String? get birthday;
  @override // ignore: non_constant_identifier_names
  int? get client_id;
  @override
  @JsonKey(ignore: true)
  _$$_ClientCopyWith<_$_Client> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverLicense _$DriverLicenseFromJson(Map<String, dynamic> json) {
  return _DriverLicense.fromJson(json);
}

/// @nodoc
mixin _$DriverLicense {
  String? get number =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get issue_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverLicenseCopyWith<DriverLicense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverLicenseCopyWith<$Res> {
  factory $DriverLicenseCopyWith(
          DriverLicense value, $Res Function(DriverLicense) then) =
      _$DriverLicenseCopyWithImpl<$Res, DriverLicense>;
  @useResult
  $Res call({String? number, String? issue_date});
}

/// @nodoc
class _$DriverLicenseCopyWithImpl<$Res, $Val extends DriverLicense>
    implements $DriverLicenseCopyWith<$Res> {
  _$DriverLicenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? issue_date = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      issue_date: freezed == issue_date
          ? _value.issue_date
          : issue_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DriverLicenseCopyWith<$Res>
    implements $DriverLicenseCopyWith<$Res> {
  factory _$$_DriverLicenseCopyWith(
          _$_DriverLicense value, $Res Function(_$_DriverLicense) then) =
      __$$_DriverLicenseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? number, String? issue_date});
}

/// @nodoc
class __$$_DriverLicenseCopyWithImpl<$Res>
    extends _$DriverLicenseCopyWithImpl<$Res, _$_DriverLicense>
    implements _$$_DriverLicenseCopyWith<$Res> {
  __$$_DriverLicenseCopyWithImpl(
      _$_DriverLicense _value, $Res Function(_$_DriverLicense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? issue_date = freezed,
  }) {
    return _then(_$_DriverLicense(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
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
class _$_DriverLicense implements _DriverLicense {
  const _$_DriverLicense({this.number, this.issue_date});

  factory _$_DriverLicense.fromJson(Map<String, dynamic> json) =>
      _$$_DriverLicenseFromJson(json);

  @override
  final String? number;
// ignore: non_constant_identifier_names
  @override
  final String? issue_date;

  @override
  String toString() {
    return 'DriverLicense(number: $number, issue_date: $issue_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverLicense &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.issue_date, issue_date) ||
                other.issue_date == issue_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, issue_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverLicenseCopyWith<_$_DriverLicense> get copyWith =>
      __$$_DriverLicenseCopyWithImpl<_$_DriverLicense>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverLicenseToJson(
      this,
    );
  }
}

abstract class _DriverLicense implements DriverLicense {
  const factory _DriverLicense(
      {final String? number, final String? issue_date}) = _$_DriverLicense;

  factory _DriverLicense.fromJson(Map<String, dynamic> json) =
      _$_DriverLicense.fromJson;

  @override
  String? get number;
  @override // ignore: non_constant_identifier_names
  String? get issue_date;
  @override
  @JsonKey(ignore: true)
  _$$_DriverLicenseCopyWith<_$_DriverLicense> get copyWith =>
      throw _privateConstructorUsedError;
}

Passport _$PassportFromJson(Map<String, dynamic> json) {
  return _Passport.fromJson(json);
}

/// @nodoc
mixin _$Passport {
  String? get number => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get issue =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get issue_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportCopyWith<Passport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportCopyWith<$Res> {
  factory $PassportCopyWith(Passport value, $Res Function(Passport) then) =
      _$PassportCopyWithImpl<$Res, Passport>;
  @useResult
  $Res call(
      {String? number, String? country, String? issue, String? issue_date});
}

/// @nodoc
class _$PassportCopyWithImpl<$Res, $Val extends Passport>
    implements $PassportCopyWith<$Res> {
  _$PassportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? country = freezed,
    Object? issue = freezed,
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
      issue: freezed == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String?,
      issue_date: freezed == issue_date
          ? _value.issue_date
          : issue_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PassportCopyWith<$Res> implements $PassportCopyWith<$Res> {
  factory _$$_PassportCopyWith(
          _$_Passport value, $Res Function(_$_Passport) then) =
      __$$_PassportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? number, String? country, String? issue, String? issue_date});
}

/// @nodoc
class __$$_PassportCopyWithImpl<$Res>
    extends _$PassportCopyWithImpl<$Res, _$_Passport>
    implements _$$_PassportCopyWith<$Res> {
  __$$_PassportCopyWithImpl(
      _$_Passport _value, $Res Function(_$_Passport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? country = freezed,
    Object? issue = freezed,
    Object? issue_date = freezed,
  }) {
    return _then(_$_Passport(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      issue: freezed == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
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
class _$_Passport implements _Passport {
  const _$_Passport({this.number, this.country, this.issue, this.issue_date});

  factory _$_Passport.fromJson(Map<String, dynamic> json) =>
      _$$_PassportFromJson(json);

  @override
  final String? number;
  @override
  final String? country;
  @override
  final String? issue;
// ignore: non_constant_identifier_names
  @override
  final String? issue_date;

  @override
  String toString() {
    return 'Passport(number: $number, country: $country, issue: $issue, issue_date: $issue_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Passport &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.issue, issue) || other.issue == issue) &&
            (identical(other.issue_date, issue_date) ||
                other.issue_date == issue_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, number, country, issue, issue_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassportCopyWith<_$_Passport> get copyWith =>
      __$$_PassportCopyWithImpl<_$_Passport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassportToJson(
      this,
    );
  }
}

abstract class _Passport implements Passport {
  const factory _Passport(
      {final String? number,
      final String? country,
      final String? issue,
      final String? issue_date}) = _$_Passport;

  factory _Passport.fromJson(Map<String, dynamic> json) = _$_Passport.fromJson;

  @override
  String? get number;
  @override
  String? get country;
  @override
  String? get issue;
  @override // ignore: non_constant_identifier_names
  String? get issue_date;
  @override
  @JsonKey(ignore: true)
  _$$_PassportCopyWith<_$_Passport> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderExtra _$OrderExtraFromJson(Map<String, dynamic> json) {
  return _OrderExtra.fromJson(json);
}

/// @nodoc
mixin _$OrderExtra {
// ignore: non_constant_identifier_names
  String get extras_short_code => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get adr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderExtraCopyWith<OrderExtra> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderExtraCopyWith<$Res> {
  factory $OrderExtraCopyWith(
          OrderExtra value, $Res Function(OrderExtra) then) =
      _$OrderExtraCopyWithImpl<$Res, OrderExtra>;
  @useResult
  $Res call({String extras_short_code, int quantity, String adr});
}

/// @nodoc
class _$OrderExtraCopyWithImpl<$Res, $Val extends OrderExtra>
    implements $OrderExtraCopyWith<$Res> {
  _$OrderExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extras_short_code = null,
    Object? quantity = null,
    Object? adr = null,
  }) {
    return _then(_value.copyWith(
      extras_short_code: null == extras_short_code
          ? _value.extras_short_code
          : extras_short_code // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      adr: null == adr
          ? _value.adr
          : adr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderExtraCopyWith<$Res>
    implements $OrderExtraCopyWith<$Res> {
  factory _$$_OrderExtraCopyWith(
          _$_OrderExtra value, $Res Function(_$_OrderExtra) then) =
      __$$_OrderExtraCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String extras_short_code, int quantity, String adr});
}

/// @nodoc
class __$$_OrderExtraCopyWithImpl<$Res>
    extends _$OrderExtraCopyWithImpl<$Res, _$_OrderExtra>
    implements _$$_OrderExtraCopyWith<$Res> {
  __$$_OrderExtraCopyWithImpl(
      _$_OrderExtra _value, $Res Function(_$_OrderExtra) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extras_short_code = null,
    Object? quantity = null,
    Object? adr = null,
  }) {
    return _then(_$_OrderExtra(
      extras_short_code: null == extras_short_code
          ? _value.extras_short_code
          : extras_short_code // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      adr: null == adr
          ? _value.adr
          : adr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderExtra implements _OrderExtra {
  const _$_OrderExtra(
      {required this.extras_short_code,
      required this.quantity,
      required this.adr});

  factory _$_OrderExtra.fromJson(Map<String, dynamic> json) =>
      _$$_OrderExtraFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final String extras_short_code;
  @override
  final int quantity;
  @override
  final String adr;

  @override
  String toString() {
    return 'OrderExtra(extras_short_code: $extras_short_code, quantity: $quantity, adr: $adr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderExtra &&
            (identical(other.extras_short_code, extras_short_code) ||
                other.extras_short_code == extras_short_code) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.adr, adr) || other.adr == adr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, extras_short_code, quantity, adr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderExtraCopyWith<_$_OrderExtra> get copyWith =>
      __$$_OrderExtraCopyWithImpl<_$_OrderExtra>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderExtraToJson(
      this,
    );
  }
}

abstract class _OrderExtra implements OrderExtra {
  const factory _OrderExtra(
      {required final String extras_short_code,
      required final int quantity,
      required final String adr}) = _$_OrderExtra;

  factory _OrderExtra.fromJson(Map<String, dynamic> json) =
      _$_OrderExtra.fromJson;

  @override // ignore: non_constant_identifier_names
  String get extras_short_code;
  @override
  int get quantity;
  @override
  String get adr;
  @override
  @JsonKey(ignore: true)
  _$$_OrderExtraCopyWith<_$_OrderExtra> get copyWith =>
      throw _privateConstructorUsedError;
}
