import 'package:rentmotors/presentation/models/requests/presentation_booking_request.dart';

class PresentationBookingOrgRequest {
  final String carId;
  final PresentationClient clientInfo;
  final PresentationPassport? passportInfo;
  final PresentationDriverLicense? dlInfo;
  final List<PresentationOrderExtra> extras;
  final String flightNumber;
  final String comments;
  final int newClient;
  final PresentationEntityInfo entityInfo;

  PresentationBookingOrgRequest({
    required this.carId,
    required this.clientInfo,
    this.passportInfo,
    this.dlInfo,
    required this.extras,
    required this.flightNumber,
    required this.comments,
    required this.newClient,
    required this.entityInfo,
  });
}

class PresentationEntityInfo {
  final String fullTitle;
  final String? shortTitle;
  final String? tin;
  final String psrn;
  final String? iec;
  final String phone;
  final String email;
  final String managerName;
  final String managerPost;
  final String legalAAddress;
  final String postalAddress;

  PresentationEntityInfo({
    required this.fullTitle,
    this.shortTitle,
    this.tin,
    required this.psrn,
    this.iec,
    required this.phone,
    required this.email,
    required this.managerName,
    required this.managerPost,
    required this.legalAAddress,
    required this.postalAddress,
  });
}
