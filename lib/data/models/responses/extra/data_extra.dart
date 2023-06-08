import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_extra.freezed.dart';
part 'data_extra.g.dart';

@freezed
class DataExtra with _$DataExtra {
  const factory DataExtra({
    required String title,
    required String description,
    // ignore: non_constant_identifier_names
    required int max_count,
    // ignore: non_constant_identifier_names
    required int per_what,
    // ignore: non_constant_identifier_names
    required String short_code,
    required double price,
    int? quantity,
    String? adr,
  }) = _DataExtra;

  factory DataExtra.fromJson(Map<String, dynamic> json) => _$DataExtraFromJson(json);
}