// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_dadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataDadata _$$_DataDadataFromJson(Map<String, dynamic> json) =>
    _$_DataDadata(
      suggestions: (json['suggestions'] as List<dynamic>)
          .map((e) => DataSuggestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataDadataToJson(_$_DataDadata instance) =>
    <String, dynamic>{
      'suggestions': instance.suggestions,
    };
