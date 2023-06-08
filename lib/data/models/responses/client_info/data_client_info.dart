import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_client_info.freezed.dart';
part 'data_client_info.g.dart';

@freezed
class DataClientInfo with _$DataClientInfo {
  const factory DataClientInfo({
    // ignore: non_constant_identifier_names
    required int customer_id,
  }) = _DataClientInfo;

  factory DataClientInfo.fromJson(Map<String, dynamic> json) => _$DataClientInfoFromJson(json);
}