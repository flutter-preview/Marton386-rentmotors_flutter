import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_modify.freezed.dart';
part 'data_modify.g.dart';

@freezed
class DataModify with _$DataModify {
  const factory DataModify({
    // ignore: non_constant_identifier_names
    required String res_id,
    // ignore: non_constant_identifier_names
    required int supplier_res_id,
    required int version,
    required int status,
  }) = _DataModify;

  factory DataModify.fromJson(Map<String, dynamic> json) => _$DataModifyFromJson(json);
}