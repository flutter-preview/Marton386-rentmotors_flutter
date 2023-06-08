import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_cancel.freezed.dart';
part 'data_cancel.g.dart';

@freezed
class DataCancel with _$DataCancel {
  const factory DataCancel({
    // ignore: non_constant_identifier_names
    required String res_id,
    // ignore: non_constant_identifier_names
    required String supplier_res_id,
    required int status,
    // ignore: non_constant_identifier_names
    required int cancelation_fee,
  }) = _DataCancel;

  factory DataCancel.fromJson(Map<String, dynamic> json) => _$DataCancelFromJson(json);
}