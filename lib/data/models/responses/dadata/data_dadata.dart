import '../suggestion/data_suggestion.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_dadata.freezed.dart';
part 'data_dadata.g.dart';

@freezed
class DataDadata with _$DataDadata {
  const factory DataDadata({
    required List<DataSuggestion> suggestions,
  }) = _DataDadata;

  factory DataDadata.fromJson(Map<String, dynamic> json) => _$DataDadataFromJson(json);
}