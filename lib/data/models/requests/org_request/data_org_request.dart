import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_org_request.freezed.dart';
part 'data_org_request.g.dart';

@freezed
class DataOrgRequest with _$DataOrgRequest {
  const factory DataOrgRequest({
    required String query
  }) = _DataOrgRequest;

  factory DataOrgRequest.fromJson(Map<String, dynamic> json) => _$DataOrgRequestFromJson(json);
}