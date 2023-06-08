// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_dadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataDadata _$DataDadataFromJson(Map<String, dynamic> json) {
  return _DataDadata.fromJson(json);
}

/// @nodoc
mixin _$DataDadata {
  List<DataSuggestion> get suggestions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDadataCopyWith<DataDadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDadataCopyWith<$Res> {
  factory $DataDadataCopyWith(
          DataDadata value, $Res Function(DataDadata) then) =
      _$DataDadataCopyWithImpl<$Res, DataDadata>;
  @useResult
  $Res call({List<DataSuggestion> suggestions});
}

/// @nodoc
class _$DataDadataCopyWithImpl<$Res, $Val extends DataDadata>
    implements $DataDadataCopyWith<$Res> {
  _$DataDadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_value.copyWith(
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<DataSuggestion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataDadataCopyWith<$Res>
    implements $DataDadataCopyWith<$Res> {
  factory _$$_DataDadataCopyWith(
          _$_DataDadata value, $Res Function(_$_DataDadata) then) =
      __$$_DataDadataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataSuggestion> suggestions});
}

/// @nodoc
class __$$_DataDadataCopyWithImpl<$Res>
    extends _$DataDadataCopyWithImpl<$Res, _$_DataDadata>
    implements _$$_DataDadataCopyWith<$Res> {
  __$$_DataDadataCopyWithImpl(
      _$_DataDadata _value, $Res Function(_$_DataDadata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_$_DataDadata(
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<DataSuggestion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataDadata implements _DataDadata {
  const _$_DataDadata({required final List<DataSuggestion> suggestions})
      : _suggestions = suggestions;

  factory _$_DataDadata.fromJson(Map<String, dynamic> json) =>
      _$$_DataDadataFromJson(json);

  final List<DataSuggestion> _suggestions;
  @override
  List<DataSuggestion> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'DataDadata(suggestions: $suggestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataDadata &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataDadataCopyWith<_$_DataDadata> get copyWith =>
      __$$_DataDadataCopyWithImpl<_$_DataDadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataDadataToJson(
      this,
    );
  }
}

abstract class _DataDadata implements DataDadata {
  const factory _DataDadata({required final List<DataSuggestion> suggestions}) =
      _$_DataDadata;

  factory _DataDadata.fromJson(Map<String, dynamic> json) =
      _$_DataDadata.fromJson;

  @override
  List<DataSuggestion> get suggestions;
  @override
  @JsonKey(ignore: true)
  _$$_DataDadataCopyWith<_$_DataDadata> get copyWith =>
      throw _privateConstructorUsedError;
}
