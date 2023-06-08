// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_booking_org_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataBookingOrgRequest _$DataBookingOrgRequestFromJson(
    Map<String, dynamic> json) {
  return _DataBookingOrgRequest.fromJson(json);
}

/// @nodoc
mixin _$DataBookingOrgRequest {
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
  int get new_client =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  EntityInfo get entity_info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataBookingOrgRequestCopyWith<DataBookingOrgRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBookingOrgRequestCopyWith<$Res> {
  factory $DataBookingOrgRequestCopyWith(DataBookingOrgRequest value,
          $Res Function(DataBookingOrgRequest) then) =
      _$DataBookingOrgRequestCopyWithImpl<$Res, DataBookingOrgRequest>;
  @useResult
  $Res call(
      {String car_id,
      Client client_info,
      Passport? passport_info,
      DriverLicense? dl_info,
      List<OrderExtra> extras,
      String flight_number,
      String comments,
      int new_client,
      EntityInfo entity_info});

  $ClientCopyWith<$Res> get client_info;
  $PassportCopyWith<$Res>? get passport_info;
  $DriverLicenseCopyWith<$Res>? get dl_info;
  $EntityInfoCopyWith<$Res> get entity_info;
}

/// @nodoc
class _$DataBookingOrgRequestCopyWithImpl<$Res,
        $Val extends DataBookingOrgRequest>
    implements $DataBookingOrgRequestCopyWith<$Res> {
  _$DataBookingOrgRequestCopyWithImpl(this._value, this._then);

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
    Object? entity_info = null,
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
      entity_info: null == entity_info
          ? _value.entity_info
          : entity_info // ignore: cast_nullable_to_non_nullable
              as EntityInfo,
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

  @override
  @pragma('vm:prefer-inline')
  $EntityInfoCopyWith<$Res> get entity_info {
    return $EntityInfoCopyWith<$Res>(_value.entity_info, (value) {
      return _then(_value.copyWith(entity_info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataBookingOrgRequestCopyWith<$Res>
    implements $DataBookingOrgRequestCopyWith<$Res> {
  factory _$$_DataBookingOrgRequestCopyWith(_$_DataBookingOrgRequest value,
          $Res Function(_$_DataBookingOrgRequest) then) =
      __$$_DataBookingOrgRequestCopyWithImpl<$Res>;
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
      int new_client,
      EntityInfo entity_info});

  @override
  $ClientCopyWith<$Res> get client_info;
  @override
  $PassportCopyWith<$Res>? get passport_info;
  @override
  $DriverLicenseCopyWith<$Res>? get dl_info;
  @override
  $EntityInfoCopyWith<$Res> get entity_info;
}

/// @nodoc
class __$$_DataBookingOrgRequestCopyWithImpl<$Res>
    extends _$DataBookingOrgRequestCopyWithImpl<$Res, _$_DataBookingOrgRequest>
    implements _$$_DataBookingOrgRequestCopyWith<$Res> {
  __$$_DataBookingOrgRequestCopyWithImpl(_$_DataBookingOrgRequest _value,
      $Res Function(_$_DataBookingOrgRequest) _then)
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
    Object? entity_info = null,
  }) {
    return _then(_$_DataBookingOrgRequest(
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
      entity_info: null == entity_info
          ? _value.entity_info
          : entity_info // ignore: cast_nullable_to_non_nullable
              as EntityInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataBookingOrgRequest implements _DataBookingOrgRequest {
  const _$_DataBookingOrgRequest(
      {required this.car_id,
      required this.client_info,
      this.passport_info,
      this.dl_info,
      required final List<OrderExtra> extras,
      required this.flight_number,
      required this.comments,
      required this.new_client,
      required this.entity_info})
      : _extras = extras;

  factory _$_DataBookingOrgRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DataBookingOrgRequestFromJson(json);

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
// ignore: non_constant_identifier_names
  @override
  final EntityInfo entity_info;

  @override
  String toString() {
    return 'DataBookingOrgRequest(car_id: $car_id, client_info: $client_info, passport_info: $passport_info, dl_info: $dl_info, extras: $extras, flight_number: $flight_number, comments: $comments, new_client: $new_client, entity_info: $entity_info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataBookingOrgRequest &&
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
                other.new_client == new_client) &&
            (identical(other.entity_info, entity_info) ||
                other.entity_info == entity_info));
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
      new_client,
      entity_info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataBookingOrgRequestCopyWith<_$_DataBookingOrgRequest> get copyWith =>
      __$$_DataBookingOrgRequestCopyWithImpl<_$_DataBookingOrgRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataBookingOrgRequestToJson(
      this,
    );
  }
}

abstract class _DataBookingOrgRequest implements DataBookingOrgRequest {
  const factory _DataBookingOrgRequest(
      {required final String car_id,
      required final Client client_info,
      final Passport? passport_info,
      final DriverLicense? dl_info,
      required final List<OrderExtra> extras,
      required final String flight_number,
      required final String comments,
      required final int new_client,
      required final EntityInfo entity_info}) = _$_DataBookingOrgRequest;

  factory _DataBookingOrgRequest.fromJson(Map<String, dynamic> json) =
      _$_DataBookingOrgRequest.fromJson;

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
  @override // ignore: non_constant_identifier_names
  EntityInfo get entity_info;
  @override
  @JsonKey(ignore: true)
  _$$_DataBookingOrgRequestCopyWith<_$_DataBookingOrgRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

EntityInfo _$EntityInfoFromJson(Map<String, dynamic> json) {
  return _EntityInfo.fromJson(json);
}

/// @nodoc
mixin _$EntityInfo {
// ignore: non_constant_identifier_names
  String get full_title =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get short_title => throw _privateConstructorUsedError;
  String? get tin => throw _privateConstructorUsedError;
  String get psrn => throw _privateConstructorUsedError;
  String? get iec => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get manager_name =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get manager_post =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get legal_address =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get postal_address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityInfoCopyWith<EntityInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityInfoCopyWith<$Res> {
  factory $EntityInfoCopyWith(
          EntityInfo value, $Res Function(EntityInfo) then) =
      _$EntityInfoCopyWithImpl<$Res, EntityInfo>;
  @useResult
  $Res call(
      {String full_title,
      String? short_title,
      String? tin,
      String psrn,
      String? iec,
      String phone,
      String email,
      String manager_name,
      String manager_post,
      String legal_address,
      String postal_address});
}

/// @nodoc
class _$EntityInfoCopyWithImpl<$Res, $Val extends EntityInfo>
    implements $EntityInfoCopyWith<$Res> {
  _$EntityInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? full_title = null,
    Object? short_title = freezed,
    Object? tin = freezed,
    Object? psrn = null,
    Object? iec = freezed,
    Object? phone = null,
    Object? email = null,
    Object? manager_name = null,
    Object? manager_post = null,
    Object? legal_address = null,
    Object? postal_address = null,
  }) {
    return _then(_value.copyWith(
      full_title: null == full_title
          ? _value.full_title
          : full_title // ignore: cast_nullable_to_non_nullable
              as String,
      short_title: freezed == short_title
          ? _value.short_title
          : short_title // ignore: cast_nullable_to_non_nullable
              as String?,
      tin: freezed == tin
          ? _value.tin
          : tin // ignore: cast_nullable_to_non_nullable
              as String?,
      psrn: null == psrn
          ? _value.psrn
          : psrn // ignore: cast_nullable_to_non_nullable
              as String,
      iec: freezed == iec
          ? _value.iec
          : iec // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      manager_name: null == manager_name
          ? _value.manager_name
          : manager_name // ignore: cast_nullable_to_non_nullable
              as String,
      manager_post: null == manager_post
          ? _value.manager_post
          : manager_post // ignore: cast_nullable_to_non_nullable
              as String,
      legal_address: null == legal_address
          ? _value.legal_address
          : legal_address // ignore: cast_nullable_to_non_nullable
              as String,
      postal_address: null == postal_address
          ? _value.postal_address
          : postal_address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntityInfoCopyWith<$Res>
    implements $EntityInfoCopyWith<$Res> {
  factory _$$_EntityInfoCopyWith(
          _$_EntityInfo value, $Res Function(_$_EntityInfo) then) =
      __$$_EntityInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String full_title,
      String? short_title,
      String? tin,
      String psrn,
      String? iec,
      String phone,
      String email,
      String manager_name,
      String manager_post,
      String legal_address,
      String postal_address});
}

/// @nodoc
class __$$_EntityInfoCopyWithImpl<$Res>
    extends _$EntityInfoCopyWithImpl<$Res, _$_EntityInfo>
    implements _$$_EntityInfoCopyWith<$Res> {
  __$$_EntityInfoCopyWithImpl(
      _$_EntityInfo _value, $Res Function(_$_EntityInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? full_title = null,
    Object? short_title = freezed,
    Object? tin = freezed,
    Object? psrn = null,
    Object? iec = freezed,
    Object? phone = null,
    Object? email = null,
    Object? manager_name = null,
    Object? manager_post = null,
    Object? legal_address = null,
    Object? postal_address = null,
  }) {
    return _then(_$_EntityInfo(
      full_title: null == full_title
          ? _value.full_title
          : full_title // ignore: cast_nullable_to_non_nullable
              as String,
      short_title: freezed == short_title
          ? _value.short_title
          : short_title // ignore: cast_nullable_to_non_nullable
              as String?,
      tin: freezed == tin
          ? _value.tin
          : tin // ignore: cast_nullable_to_non_nullable
              as String?,
      psrn: null == psrn
          ? _value.psrn
          : psrn // ignore: cast_nullable_to_non_nullable
              as String,
      iec: freezed == iec
          ? _value.iec
          : iec // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      manager_name: null == manager_name
          ? _value.manager_name
          : manager_name // ignore: cast_nullable_to_non_nullable
              as String,
      manager_post: null == manager_post
          ? _value.manager_post
          : manager_post // ignore: cast_nullable_to_non_nullable
              as String,
      legal_address: null == legal_address
          ? _value.legal_address
          : legal_address // ignore: cast_nullable_to_non_nullable
              as String,
      postal_address: null == postal_address
          ? _value.postal_address
          : postal_address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityInfo implements _EntityInfo {
  const _$_EntityInfo(
      {required this.full_title,
      this.short_title,
      this.tin,
      required this.psrn,
      this.iec,
      required this.phone,
      required this.email,
      required this.manager_name,
      required this.manager_post,
      required this.legal_address,
      required this.postal_address});

  factory _$_EntityInfo.fromJson(Map<String, dynamic> json) =>
      _$$_EntityInfoFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final String full_title;
// ignore: non_constant_identifier_names
  @override
  final String? short_title;
  @override
  final String? tin;
  @override
  final String psrn;
  @override
  final String? iec;
  @override
  final String phone;
  @override
  final String email;
// ignore: non_constant_identifier_names
  @override
  final String manager_name;
// ignore: non_constant_identifier_names
  @override
  final String manager_post;
// ignore: non_constant_identifier_names
  @override
  final String legal_address;
// ignore: non_constant_identifier_names
  @override
  final String postal_address;

  @override
  String toString() {
    return 'EntityInfo(full_title: $full_title, short_title: $short_title, tin: $tin, psrn: $psrn, iec: $iec, phone: $phone, email: $email, manager_name: $manager_name, manager_post: $manager_post, legal_address: $legal_address, postal_address: $postal_address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityInfo &&
            (identical(other.full_title, full_title) ||
                other.full_title == full_title) &&
            (identical(other.short_title, short_title) ||
                other.short_title == short_title) &&
            (identical(other.tin, tin) || other.tin == tin) &&
            (identical(other.psrn, psrn) || other.psrn == psrn) &&
            (identical(other.iec, iec) || other.iec == iec) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.manager_name, manager_name) ||
                other.manager_name == manager_name) &&
            (identical(other.manager_post, manager_post) ||
                other.manager_post == manager_post) &&
            (identical(other.legal_address, legal_address) ||
                other.legal_address == legal_address) &&
            (identical(other.postal_address, postal_address) ||
                other.postal_address == postal_address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      full_title,
      short_title,
      tin,
      psrn,
      iec,
      phone,
      email,
      manager_name,
      manager_post,
      legal_address,
      postal_address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntityInfoCopyWith<_$_EntityInfo> get copyWith =>
      __$$_EntityInfoCopyWithImpl<_$_EntityInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityInfoToJson(
      this,
    );
  }
}

abstract class _EntityInfo implements EntityInfo {
  const factory _EntityInfo(
      {required final String full_title,
      final String? short_title,
      final String? tin,
      required final String psrn,
      final String? iec,
      required final String phone,
      required final String email,
      required final String manager_name,
      required final String manager_post,
      required final String legal_address,
      required final String postal_address}) = _$_EntityInfo;

  factory _EntityInfo.fromJson(Map<String, dynamic> json) =
      _$_EntityInfo.fromJson;

  @override // ignore: non_constant_identifier_names
  String get full_title;
  @override // ignore: non_constant_identifier_names
  String? get short_title;
  @override
  String? get tin;
  @override
  String get psrn;
  @override
  String? get iec;
  @override
  String get phone;
  @override
  String get email;
  @override // ignore: non_constant_identifier_names
  String get manager_name;
  @override // ignore: non_constant_identifier_names
  String get manager_post;
  @override // ignore: non_constant_identifier_names
  String get legal_address;
  @override // ignore: non_constant_identifier_names
  String get postal_address;
  @override
  @JsonKey(ignore: true)
  _$$_EntityInfoCopyWith<_$_EntityInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
