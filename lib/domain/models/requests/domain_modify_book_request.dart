import 'domain_booking_request.dart';
import '../responses/domain_reservation_response.dart';
import '../../../presentation/models/requests/presentation_modify_book_request.dart';
import '../../../data/models/requests/modify_book_request/data_modify_book_request.dart';

class DomainModifyBookRequest {
  final String resId;
  final String carId;
  final DomainResClientInfo clientInfo;
  final String flightNumber;
  final List<DomainOrderExtra> extras;
  final String comments;

  DomainModifyBookRequest({
    required this.resId,
    required this.carId,
    required this.clientInfo,
    required this.flightNumber,
    required this.extras,
    required this.comments,
  });

  factory DomainModifyBookRequest.fromPress(
      PresentationModifyBookRequest press) {
    return DomainModifyBookRequest(
      resId: press.resId,
      carId: press.carId,
      clientInfo: DomainResClientInfo.fromPress(press.clientInfo),
      flightNumber: press.flightNumber,
      extras:
          press.extras.map((elem) => DomainOrderExtra.fromPress(elem)).toList(),
      comments: press.comments,
    );
  }

  DataModifyBookRequest toData() {
    return DataModifyBookRequest(
      res_id: resId,
      car_id: carId,
      client_info: clientInfo.toData(),
      flight_number: flightNumber,
      extras: extras.map((elem) => elem.toData()).toList(),
      comments: comments,
    );
  }
}