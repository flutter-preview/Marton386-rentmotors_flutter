import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_suggestion.freezed.dart';
part 'data_suggestion.g.dart';

@freezed
class DataSuggestion with _$DataSuggestion {
  const factory DataSuggestion({
    required int? id,
    required String value,
    // ignore: non_constant_identifier_names
    required String unrestricted_value,
    required SuggestionDataDTO data,
  }) = _DataSuggestion;

  factory DataSuggestion.fromJson(Map<String, dynamic> json) => _$DataSuggestionFromJson(json);
}

@freezed
class SuggestionDataDTO with _$SuggestionDataDTO {
  const factory SuggestionDataDTO({
    String? kpp,
    ManagementDTO? management,
    required NameDTO name,
    required String inn,
    required String ogrn,
    required AddressDTO address,
  }) = _SuggestionDataDTO;

  factory SuggestionDataDTO.fromJson(Map<String, dynamic> json) => _$SuggestionDataDTOFromJson(json);
}

@freezed
class ManagementDTO with _$ManagementDTO {
  const factory ManagementDTO({
    required String name,
    required String post,
    String? disqualified,
  }) = _ManagementDTO;

  factory ManagementDTO.fromJson(Map<String, dynamic> json) => _$ManagementDTOFromJson(json);
}

@freezed
class NameDTO with _$NameDTO {
  const factory NameDTO({
    // ignore: non_constant_identifier_names
    required String full_with_opf,
    // ignore: non_constant_identifier_names
    String? short_with_opf,
    String? latin,
    String? full,
    String? short,
  }) = _NameDTO;

  factory NameDTO.fromJson(Map<String, dynamic> json) => _$NameDTOFromJson(json);
}

@freezed
class AddressDTO with _$AddressDTO {
  const factory AddressDTO({
    required String value,
  }) = _AddressDTO;

  factory AddressDTO.fromJson(Map<String, dynamic> json) => _$AddressDTOFromJson(json);
}