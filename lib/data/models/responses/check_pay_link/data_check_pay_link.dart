import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_check_pay_link.freezed.dart';
part 'data_check_pay_link.g.dart';

@freezed
class DataCheckPayLink with _$DataCheckPayLink {
  const factory DataCheckPayLink({
    required int code,
    required String msg,
  }) = _DataCheckPayLink;

  factory DataCheckPayLink.fromJson(Map<String, dynamic> json) => _$DataCheckPayLinkFromJson(json);
}