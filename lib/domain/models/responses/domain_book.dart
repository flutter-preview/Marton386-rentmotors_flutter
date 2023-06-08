import '../../../data/models/responses/book/data_book.dart';
import '../../../presentation/models/responses/presentation_book.dart';

class DomainBook {
  final String resId;
  final int status;

  DomainBook({
    required this.resId,
    required this.status,
  });

  factory DomainBook.fromData(DataBook data) {
    return DomainBook(
      resId: data.res_id.toString(),
      status: data.status,
    );
  }

  PresentationBook toPress() {
    return PresentationBook(
      resId: resId,
      status: status,
    );
  }
}
