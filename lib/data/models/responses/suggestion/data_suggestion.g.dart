// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataSuggestion _$$_DataSuggestionFromJson(Map<String, dynamic> json) =>
    _$_DataSuggestion(
      id: json['id'] as int?,
      value: json['value'] as String,
      unrestricted_value: json['unrestricted_value'] as String,
      data: SuggestionDataDTO.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataSuggestionToJson(_$_DataSuggestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'unrestricted_value': instance.unrestricted_value,
      'data': instance.data,
    };

_$_SuggestionDataDTO _$$_SuggestionDataDTOFromJson(Map<String, dynamic> json) =>
    _$_SuggestionDataDTO(
      kpp: json['kpp'] as String?,
      management: json['management'] == null
          ? null
          : ManagementDTO.fromJson(json['management'] as Map<String, dynamic>),
      name: NameDTO.fromJson(json['name'] as Map<String, dynamic>),
      inn: json['inn'] as String,
      ogrn: json['ogrn'] as String,
      address: AddressDTO.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SuggestionDataDTOToJson(
        _$_SuggestionDataDTO instance) =>
    <String, dynamic>{
      'kpp': instance.kpp,
      'management': instance.management,
      'name': instance.name,
      'inn': instance.inn,
      'ogrn': instance.ogrn,
      'address': instance.address,
    };

_$_ManagementDTO _$$_ManagementDTOFromJson(Map<String, dynamic> json) =>
    _$_ManagementDTO(
      name: json['name'] as String,
      post: json['post'] as String,
      disqualified: json['disqualified'] as String?,
    );

Map<String, dynamic> _$$_ManagementDTOToJson(_$_ManagementDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'post': instance.post,
      'disqualified': instance.disqualified,
    };

_$_NameDTO _$$_NameDTOFromJson(Map<String, dynamic> json) => _$_NameDTO(
      full_with_opf: json['full_with_opf'] as String,
      short_with_opf: json['short_with_opf'] as String?,
      latin: json['latin'] as String?,
      full: json['full'] as String?,
      short: json['short'] as String?,
    );

Map<String, dynamic> _$$_NameDTOToJson(_$_NameDTO instance) =>
    <String, dynamic>{
      'full_with_opf': instance.full_with_opf,
      'short_with_opf': instance.short_with_opf,
      'latin': instance.latin,
      'full': instance.full,
      'short': instance.short,
    };

_$_AddressDTO _$$_AddressDTOFromJson(Map<String, dynamic> json) =>
    _$_AddressDTO(
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_AddressDTOToJson(_$_AddressDTO instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
