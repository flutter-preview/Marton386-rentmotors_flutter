import '../../utils/result.dart';
import '../models/responses/presentation_book.dart';
import '../models/responses/presentation_client_info.dart';
import '../models/requests/presentation_booking_request.dart';
import '../models/requests/presentation_booking_org_request.dart';

abstract class BookInteractor {
  Future<Result<PresentationBook>> book(
    PresentationBookingRequest bookingRequest,
  );
  Future<Result<PresentationBook>> orgBook(
    PresentationBookingOrgRequest bookingOrgRequest,
  );
  Future<Result<PresentationClientInfo>> checkClient(
    String lastName,
    String email,
  );
}