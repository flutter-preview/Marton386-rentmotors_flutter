import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_book.freezed.dart';
part 'data_book.g.dart';

@freezed
class DataBook with _$DataBook {
  const factory DataBook({
    // ignore: non_constant_identifier_names
    required dynamic res_id,
    required int status,
  }) = _DataBook;

  factory DataBook.fromJson(Map<String, dynamic> json) => _$DataBookFromJson(json);
}