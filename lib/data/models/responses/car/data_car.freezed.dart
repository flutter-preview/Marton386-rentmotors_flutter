// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataCar _$DataCarFromJson(Map<String, dynamic> json) {
  return _DataCar.fromJson(json);
}

/// @nodoc
mixin _$DataCar {
// ignore: non_constant_identifier_names
  String get car_id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  CarInfo get car_info =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  bool get on_request => throw _privateConstructorUsedError;
  List<DataFee> get fees => throw _privateConstructorUsedError;
  List<DataExtra> get extras =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  double get net_rate =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  List<String> get included_features => throw _privateConstructorUsedError;
  int get mileage => throw _privateConstructorUsedError;
  Promo? get promo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCarCopyWith<DataCar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCarCopyWith<$Res> {
  factory $DataCarCopyWith(DataCar value, $Res Function(DataCar) then) =
      _$DataCarCopyWithImpl<$Res, DataCar>;
  @useResult
  $Res call(
      {String car_id,
      CarInfo car_info,
      bool on_request,
      List<DataFee> fees,
      List<DataExtra> extras,
      double net_rate,
      List<String> included_features,
      int mileage,
      Promo? promo});

  $CarInfoCopyWith<$Res> get car_info;
  $PromoCopyWith<$Res>? get promo;
}

/// @nodoc
class _$DataCarCopyWithImpl<$Res, $Val extends DataCar>
    implements $DataCarCopyWith<$Res> {
  _$DataCarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car_id = null,
    Object? car_info = null,
    Object? on_request = null,
    Object? fees = null,
    Object? extras = null,
    Object? net_rate = null,
    Object? included_features = null,
    Object? mileage = null,
    Object? promo = freezed,
  }) {
    return _then(_value.copyWith(
      car_id: null == car_id
          ? _value.car_id
          : car_id // ignore: cast_nullable_to_non_nullable
              as String,
      car_info: null == car_info
          ? _value.car_info
          : car_info // ignore: cast_nullable_to_non_nullable
              as CarInfo,
      on_request: null == on_request
          ? _value.on_request
          : on_request // ignore: cast_nullable_to_non_nullable
              as bool,
      fees: null == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as List<DataFee>,
      extras: null == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<DataExtra>,
      net_rate: null == net_rate
          ? _value.net_rate
          : net_rate // ignore: cast_nullable_to_non_nullable
              as double,
      included_features: null == included_features
          ? _value.included_features
          : included_features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mileage: null == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as int,
      promo: freezed == promo
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as Promo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarInfoCopyWith<$Res> get car_info {
    return $CarInfoCopyWith<$Res>(_value.car_info, (value) {
      return _then(_value.copyWith(car_info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PromoCopyWith<$Res>? get promo {
    if (_value.promo == null) {
      return null;
    }

    return $PromoCopyWith<$Res>(_value.promo!, (value) {
      return _then(_value.copyWith(promo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataCarCopyWith<$Res> implements $DataCarCopyWith<$Res> {
  factory _$$_DataCarCopyWith(
          _$_DataCar value, $Res Function(_$_DataCar) then) =
      __$$_DataCarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String car_id,
      CarInfo car_info,
      bool on_request,
      List<DataFee> fees,
      List<DataExtra> extras,
      double net_rate,
      List<String> included_features,
      int mileage,
      Promo? promo});

  @override
  $CarInfoCopyWith<$Res> get car_info;
  @override
  $PromoCopyWith<$Res>? get promo;
}

/// @nodoc
class __$$_DataCarCopyWithImpl<$Res>
    extends _$DataCarCopyWithImpl<$Res, _$_DataCar>
    implements _$$_DataCarCopyWith<$Res> {
  __$$_DataCarCopyWithImpl(_$_DataCar _value, $Res Function(_$_DataCar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car_id = null,
    Object? car_info = null,
    Object? on_request = null,
    Object? fees = null,
    Object? extras = null,
    Object? net_rate = null,
    Object? included_features = null,
    Object? mileage = null,
    Object? promo = freezed,
  }) {
    return _then(_$_DataCar(
      car_id: null == car_id
          ? _value.car_id
          : car_id // ignore: cast_nullable_to_non_nullable
              as String,
      car_info: null == car_info
          ? _value.car_info
          : car_info // ignore: cast_nullable_to_non_nullable
              as CarInfo,
      on_request: null == on_request
          ? _value.on_request
          : on_request // ignore: cast_nullable_to_non_nullable
              as bool,
      fees: null == fees
          ? _value._fees
          : fees // ignore: cast_nullable_to_non_nullable
              as List<DataFee>,
      extras: null == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<DataExtra>,
      net_rate: null == net_rate
          ? _value.net_rate
          : net_rate // ignore: cast_nullable_to_non_nullable
              as double,
      included_features: null == included_features
          ? _value._included_features
          : included_features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mileage: null == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as int,
      promo: freezed == promo
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as Promo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataCar implements _DataCar {
  const _$_DataCar(
      {required this.car_id,
      required this.car_info,
      required this.on_request,
      required final List<DataFee> fees,
      required final List<DataExtra> extras,
      required this.net_rate,
      required final List<String> included_features,
      required this.mileage,
      this.promo})
      : _fees = fees,
        _extras = extras,
        _included_features = included_features;

  factory _$_DataCar.fromJson(Map<String, dynamic> json) =>
      _$$_DataCarFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final String car_id;
// ignore: non_constant_identifier_names
  @override
  final CarInfo car_info;
// ignore: non_constant_identifier_names
  @override
  final bool on_request;
  final List<DataFee> _fees;
  @override
  List<DataFee> get fees {
    if (_fees is EqualUnmodifiableListView) return _fees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fees);
  }

  final List<DataExtra> _extras;
  @override
  List<DataExtra> get extras {
    if (_extras is EqualUnmodifiableListView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extras);
  }

// ignore: non_constant_identifier_names
  @override
  final double net_rate;
// ignore: non_constant_identifier_names
  final List<String> _included_features;
// ignore: non_constant_identifier_names
  @override
  List<String> get included_features {
    if (_included_features is EqualUnmodifiableListView)
      return _included_features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_included_features);
  }

  @override
  final int mileage;
  @override
  final Promo? promo;

  @override
  String toString() {
    return 'DataCar(car_id: $car_id, car_info: $car_info, on_request: $on_request, fees: $fees, extras: $extras, net_rate: $net_rate, included_features: $included_features, mileage: $mileage, promo: $promo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataCar &&
            (identical(other.car_id, car_id) || other.car_id == car_id) &&
            (identical(other.car_info, car_info) ||
                other.car_info == car_info) &&
            (identical(other.on_request, on_request) ||
                other.on_request == on_request) &&
            const DeepCollectionEquality().equals(other._fees, _fees) &&
            const DeepCollectionEquality().equals(other._extras, _extras) &&
            (identical(other.net_rate, net_rate) ||
                other.net_rate == net_rate) &&
            const DeepCollectionEquality()
                .equals(other._included_features, _included_features) &&
            (identical(other.mileage, mileage) || other.mileage == mileage) &&
            (identical(other.promo, promo) || other.promo == promo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      car_id,
      car_info,
      on_request,
      const DeepCollectionEquality().hash(_fees),
      const DeepCollectionEquality().hash(_extras),
      net_rate,
      const DeepCollectionEquality().hash(_included_features),
      mileage,
      promo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCarCopyWith<_$_DataCar> get copyWith =>
      __$$_DataCarCopyWithImpl<_$_DataCar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataCarToJson(
      this,
    );
  }
}

abstract class _DataCar implements DataCar {
  const factory _DataCar(
      {required final String car_id,
      required final CarInfo car_info,
      required final bool on_request,
      required final List<DataFee> fees,
      required final List<DataExtra> extras,
      required final double net_rate,
      required final List<String> included_features,
      required final int mileage,
      final Promo? promo}) = _$_DataCar;

  factory _DataCar.fromJson(Map<String, dynamic> json) = _$_DataCar.fromJson;

  @override // ignore: non_constant_identifier_names
  String get car_id;
  @override // ignore: non_constant_identifier_names
  CarInfo get car_info;
  @override // ignore: non_constant_identifier_names
  bool get on_request;
  @override
  List<DataFee> get fees;
  @override
  List<DataExtra> get extras;
  @override // ignore: non_constant_identifier_names
  double get net_rate;
  @override // ignore: non_constant_identifier_names
  List<String> get included_features;
  @override
  int get mileage;
  @override
  Promo? get promo;
  @override
  @JsonKey(ignore: true)
  _$$_DataCarCopyWith<_$_DataCar> get copyWith =>
      throw _privateConstructorUsedError;
}

CarInfo _$CarInfoFromJson(Map<String, dynamic> json) {
  return _CarInfo.fromJson(json);
}

/// @nodoc
mixin _$CarInfo {
  String get code => throw _privateConstructorUsedError;
  int get at => throw _privateConstructorUsedError;
  int get ac => throw _privateConstructorUsedError;
  int get seats => throw _privateConstructorUsedError;
  int get doors =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get bag_small =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get bag_big =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get car_name =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get car_url_transparent => throw _privateConstructorUsedError;
  double get deposit => throw _privateConstructorUsedError;
  int get ev => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarInfoCopyWith<CarInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarInfoCopyWith<$Res> {
  factory $CarInfoCopyWith(CarInfo value, $Res Function(CarInfo) then) =
      _$CarInfoCopyWithImpl<$Res, CarInfo>;
  @useResult
  $Res call(
      {String code,
      int at,
      int ac,
      int seats,
      int doors,
      int bag_small,
      int bag_big,
      String car_name,
      String car_url_transparent,
      double deposit,
      int ev});
}

/// @nodoc
class _$CarInfoCopyWithImpl<$Res, $Val extends CarInfo>
    implements $CarInfoCopyWith<$Res> {
  _$CarInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? at = null,
    Object? ac = null,
    Object? seats = null,
    Object? doors = null,
    Object? bag_small = null,
    Object? bag_big = null,
    Object? car_name = null,
    Object? car_url_transparent = null,
    Object? deposit = null,
    Object? ev = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      at: null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as int,
      ac: null == ac
          ? _value.ac
          : ac // ignore: cast_nullable_to_non_nullable
              as int,
      seats: null == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int,
      doors: null == doors
          ? _value.doors
          : doors // ignore: cast_nullable_to_non_nullable
              as int,
      bag_small: null == bag_small
          ? _value.bag_small
          : bag_small // ignore: cast_nullable_to_non_nullable
              as int,
      bag_big: null == bag_big
          ? _value.bag_big
          : bag_big // ignore: cast_nullable_to_non_nullable
              as int,
      car_name: null == car_name
          ? _value.car_name
          : car_name // ignore: cast_nullable_to_non_nullable
              as String,
      car_url_transparent: null == car_url_transparent
          ? _value.car_url_transparent
          : car_url_transparent // ignore: cast_nullable_to_non_nullable
              as String,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as double,
      ev: null == ev
          ? _value.ev
          : ev // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarInfoCopyWith<$Res> implements $CarInfoCopyWith<$Res> {
  factory _$$_CarInfoCopyWith(
          _$_CarInfo value, $Res Function(_$_CarInfo) then) =
      __$$_CarInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      int at,
      int ac,
      int seats,
      int doors,
      int bag_small,
      int bag_big,
      String car_name,
      String car_url_transparent,
      double deposit,
      int ev});
}

/// @nodoc
class __$$_CarInfoCopyWithImpl<$Res>
    extends _$CarInfoCopyWithImpl<$Res, _$_CarInfo>
    implements _$$_CarInfoCopyWith<$Res> {
  __$$_CarInfoCopyWithImpl(_$_CarInfo _value, $Res Function(_$_CarInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? at = null,
    Object? ac = null,
    Object? seats = null,
    Object? doors = null,
    Object? bag_small = null,
    Object? bag_big = null,
    Object? car_name = null,
    Object? car_url_transparent = null,
    Object? deposit = null,
    Object? ev = null,
  }) {
    return _then(_$_CarInfo(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      at: null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as int,
      ac: null == ac
          ? _value.ac
          : ac // ignore: cast_nullable_to_non_nullable
              as int,
      seats: null == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int,
      doors: null == doors
          ? _value.doors
          : doors // ignore: cast_nullable_to_non_nullable
              as int,
      bag_small: null == bag_small
          ? _value.bag_small
          : bag_small // ignore: cast_nullable_to_non_nullable
              as int,
      bag_big: null == bag_big
          ? _value.bag_big
          : bag_big // ignore: cast_nullable_to_non_nullable
              as int,
      car_name: null == car_name
          ? _value.car_name
          : car_name // ignore: cast_nullable_to_non_nullable
              as String,
      car_url_transparent: null == car_url_transparent
          ? _value.car_url_transparent
          : car_url_transparent // ignore: cast_nullable_to_non_nullable
              as String,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as double,
      ev: null == ev
          ? _value.ev
          : ev // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarInfo implements _CarInfo {
  const _$_CarInfo(
      {required this.code,
      required this.at,
      required this.ac,
      required this.seats,
      required this.doors,
      required this.bag_small,
      required this.bag_big,
      required this.car_name,
      required this.car_url_transparent,
      required this.deposit,
      required this.ev});

  factory _$_CarInfo.fromJson(Map<String, dynamic> json) =>
      _$$_CarInfoFromJson(json);

  @override
  final String code;
  @override
  final int at;
  @override
  final int ac;
  @override
  final int seats;
  @override
  final int doors;
// ignore: non_constant_identifier_names
  @override
  final int bag_small;
// ignore: non_constant_identifier_names
  @override
  final int bag_big;
// ignore: non_constant_identifier_names
  @override
  final String car_name;
// ignore: non_constant_identifier_names
  @override
  final String car_url_transparent;
  @override
  final double deposit;
  @override
  final int ev;

  @override
  String toString() {
    return 'CarInfo(code: $code, at: $at, ac: $ac, seats: $seats, doors: $doors, bag_small: $bag_small, bag_big: $bag_big, car_name: $car_name, car_url_transparent: $car_url_transparent, deposit: $deposit, ev: $ev)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarInfo &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.ac, ac) || other.ac == ac) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.doors, doors) || other.doors == doors) &&
            (identical(other.bag_small, bag_small) ||
                other.bag_small == bag_small) &&
            (identical(other.bag_big, bag_big) || other.bag_big == bag_big) &&
            (identical(other.car_name, car_name) ||
                other.car_name == car_name) &&
            (identical(other.car_url_transparent, car_url_transparent) ||
                other.car_url_transparent == car_url_transparent) &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            (identical(other.ev, ev) || other.ev == ev));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, at, ac, seats, doors,
      bag_small, bag_big, car_name, car_url_transparent, deposit, ev);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarInfoCopyWith<_$_CarInfo> get copyWith =>
      __$$_CarInfoCopyWithImpl<_$_CarInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarInfoToJson(
      this,
    );
  }
}

abstract class _CarInfo implements CarInfo {
  const factory _CarInfo(
      {required final String code,
      required final int at,
      required final int ac,
      required final int seats,
      required final int doors,
      required final int bag_small,
      required final int bag_big,
      required final String car_name,
      required final String car_url_transparent,
      required final double deposit,
      required final int ev}) = _$_CarInfo;

  factory _CarInfo.fromJson(Map<String, dynamic> json) = _$_CarInfo.fromJson;

  @override
  String get code;
  @override
  int get at;
  @override
  int get ac;
  @override
  int get seats;
  @override
  int get doors;
  @override // ignore: non_constant_identifier_names
  int get bag_small;
  @override // ignore: non_constant_identifier_names
  int get bag_big;
  @override // ignore: non_constant_identifier_names
  String get car_name;
  @override // ignore: non_constant_identifier_names
  String get car_url_transparent;
  @override
  double get deposit;
  @override
  int get ev;
  @override
  @JsonKey(ignore: true)
  _$$_CarInfoCopyWith<_$_CarInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

Promo _$PromoFromJson(Map<String, dynamic> json) {
  return _Promo.fromJson(json);
}

/// @nodoc
mixin _$Promo {
  String get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  int? get value =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get sale_type =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get sale_value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoCopyWith<Promo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoCopyWith<$Res> {
  factory $PromoCopyWith(Promo value, $Res Function(Promo) then) =
      _$PromoCopyWithImpl<$Res, Promo>;
  @useResult
  $Res call(
      {String code,
      String title,
      String description,
      int? type,
      int? value,
      String? sale_type,
      String? sale_value});
}

/// @nodoc
class _$PromoCopyWithImpl<$Res, $Val extends Promo>
    implements $PromoCopyWith<$Res> {
  _$PromoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
    Object? description = null,
    Object? type = freezed,
    Object? value = freezed,
    Object? sale_type = freezed,
    Object? sale_value = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      sale_type: freezed == sale_type
          ? _value.sale_type
          : sale_type // ignore: cast_nullable_to_non_nullable
              as String?,
      sale_value: freezed == sale_value
          ? _value.sale_value
          : sale_value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromoCopyWith<$Res> implements $PromoCopyWith<$Res> {
  factory _$$_PromoCopyWith(_$_Promo value, $Res Function(_$_Promo) then) =
      __$$_PromoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String title,
      String description,
      int? type,
      int? value,
      String? sale_type,
      String? sale_value});
}

/// @nodoc
class __$$_PromoCopyWithImpl<$Res> extends _$PromoCopyWithImpl<$Res, _$_Promo>
    implements _$$_PromoCopyWith<$Res> {
  __$$_PromoCopyWithImpl(_$_Promo _value, $Res Function(_$_Promo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
    Object? description = null,
    Object? type = freezed,
    Object? value = freezed,
    Object? sale_type = freezed,
    Object? sale_value = freezed,
  }) {
    return _then(_$_Promo(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      sale_type: freezed == sale_type
          ? _value.sale_type
          : sale_type // ignore: cast_nullable_to_non_nullable
              as String?,
      sale_value: freezed == sale_value
          ? _value.sale_value
          : sale_value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Promo implements _Promo {
  const _$_Promo(
      {required this.code,
      required this.title,
      required this.description,
      this.type,
      this.value,
      this.sale_type,
      this.sale_value});

  factory _$_Promo.fromJson(Map<String, dynamic> json) =>
      _$$_PromoFromJson(json);

  @override
  final String code;
  @override
  final String title;
  @override
  final String description;
  @override
  final int? type;
  @override
  final int? value;
// ignore: non_constant_identifier_names
  @override
  final String? sale_type;
// ignore: non_constant_identifier_names
  @override
  final String? sale_value;

  @override
  String toString() {
    return 'Promo(code: $code, title: $title, description: $description, type: $type, value: $value, sale_type: $sale_type, sale_value: $sale_value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Promo &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.sale_type, sale_type) ||
                other.sale_type == sale_type) &&
            (identical(other.sale_value, sale_value) ||
                other.sale_value == sale_value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, title, description, type,
      value, sale_type, sale_value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromoCopyWith<_$_Promo> get copyWith =>
      __$$_PromoCopyWithImpl<_$_Promo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromoToJson(
      this,
    );
  }
}

abstract class _Promo implements Promo {
  const factory _Promo(
      {required final String code,
      required final String title,
      required final String description,
      final int? type,
      final int? value,
      final String? sale_type,
      final String? sale_value}) = _$_Promo;

  factory _Promo.fromJson(Map<String, dynamic> json) = _$_Promo.fromJson;

  @override
  String get code;
  @override
  String get title;
  @override
  String get description;
  @override
  int? get type;
  @override
  int? get value;
  @override // ignore: non_constant_identifier_names
  String? get sale_type;
  @override // ignore: non_constant_identifier_names
  String? get sale_value;
  @override
  @JsonKey(ignore: true)
  _$$_PromoCopyWith<_$_Promo> get copyWith =>
      throw _privateConstructorUsedError;
}
