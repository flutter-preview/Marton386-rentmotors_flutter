import '../responses/presentation_reservation_response.dart';
import 'package:rentmotors/presentation/models/requests/presentation_booking_request.dart';

class PresentationModifyBookRequest {
  final String resId;
  final String carId;
  final PresentationResClientInfo clientInfo;
  final String flightNumber;
  final List<PresentationOrderExtra> extras;
  final String comments;

  PresentationModifyBookRequest({
    required this.resId,
    required this.carId,
    required this.clientInfo,
    required this.flightNumber,
    required this.extras,
    required this.comments,
  });
}