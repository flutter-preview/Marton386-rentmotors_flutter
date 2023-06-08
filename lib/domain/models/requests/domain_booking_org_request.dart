import 'domain_booking_request.dart';
import '../../../presentation/models/requests/presentation_booking_org_request.dart';
import '../../../data/models/requests/booking_org_request/data_booking_org_request.dart';

class DomainBookingOrgRequest {
  final String carId;
  final DomainClient clientInfo;
  final DomainPassport? passportInfo;
  final DomainDriverLicense? dlInfo;
  final List<DomainOrderExtra> extras;
  final String flightNumber;
  final String comments;
  final int newClient;
  final DomainEntityInfo entityInfo;

  DomainBookingOrgRequest({
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

  factory DomainBookingOrgRequest.fromPress(
      PresentationBookingOrgRequest press) {
    return DomainBookingOrgRequest(
      carId: press.carId,
      clientInfo: DomainClient.fromPress(press.clientInfo),
      passportInfo: (press.passportInfo != null)
          ? DomainPassport.fromPress(press.passportInfo!)
          : null,
      dlInfo: (press.dlInfo != null)
          ? DomainDriverLicense.fromPress(press.dlInfo!)
          : null,
      extras:
      press.extras.map((elem) => DomainOrderExtra.fromPress(elem)).toList(),
      flightNumber: press.flightNumber,
      comments: press.comments,
      newClient: press.newClient,
      entityInfo: DomainEntityInfo.fromPress(press.entityInfo),
    );
  }

  DataBookingOrgRequest toData() {
    return DataBookingOrgRequest(
      car_id: carId,
      client_info: clientInfo.toDomain(),
      passport_info: (passportInfo != null)
          ? passportInfo?.toData()
          : null,
      dl_info: (dlInfo != null)
          ? dlInfo?.toData()
          : null,
      extras: extras.map((elem) => elem.toData()).toList(),
      flight_number: flightNumber,
      comments: comments,
      new_client: newClient,
      entity_info: entityInfo.toData(),
    );
  }
}

class DomainEntityInfo {
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

  DomainEntityInfo({
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

  factory DomainEntityInfo.fromPress(PresentationEntityInfo press) {
    return DomainEntityInfo(
      fullTitle: press.fullTitle,
      shortTitle: press.shortTitle,
      tin: press.tin,
      psrn: press.psrn,
      iec: press.iec,
      phone: press.phone,
      email: press.email,
      managerName: press.managerName,
      managerPost: press.managerPost,
      legalAAddress: press.legalAAddress,
      postalAddress: press.postalAddress,
    );
  }

  EntityInfo toData() {
    return EntityInfo(
      full_title: fullTitle,
      short_title: shortTitle,
      tin: tin,
      psrn: psrn,
      iec: iec,
      phone: phone,
      email: email,
      manager_name: managerName,
      manager_post: managerPost,
      legal_address: legalAAddress,
      postal_address: postalAddress,
    );
  }
}
