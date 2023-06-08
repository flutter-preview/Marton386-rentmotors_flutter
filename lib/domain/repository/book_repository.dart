import '../../utils/result.dart';
import '../../data/models/responses/book/data_book.dart';
import '../../data/models/requests/booking_request/data_booking_request.dart';
import '../../data/models/requests/booking_org_request/data_booking_org_request.dart';

abstract class BookRepository {
  Future<Result<DataBook>> book(DataBookingRequest bookingRequest);
  Future<Result<DataBook>> orgBook(DataBookingOrgRequest bookingOrgRequest);
}