import 'dart:io';
import '../../../data/models/requests/booking_request/data_booking_request.dart';
import '../../../presentation/models/requests/presentation_booking_request.dart';

class DomainBookingRequest {
  final String carId;
  final DomainClient clientInfo;
  final DomainPassport? passportInfo;
  final DomainDriverLicense? dlInfo;
  final List<DomainOrderExtra> extras;
  final String flightNumber;
  final String comments;
  final int newClient;

  DomainBookingRequest({
    required this.carId,
    required this.clientInfo,
    this.passportInfo,
    this.dlInfo,
    required this.extras,
    required this.flightNumber,
    required this.comments,
    required this.newClient,
  });

  factory DomainBookingRequest.fromPress(PresentationBookingRequest press) {
    return DomainBookingRequest(
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
    );
  }

  DataBookingRequest toData() {
    String platform = Platform.isIOS ? "IOS" : "ANDROID";
    return DataBookingRequest(
      car_id: carId,
      client_info: clientInfo.toDomain(),
      passport_info: (passportInfo != null)
          ? passportInfo?.toData()
          : null,
      dl_info: (dlInfo != null)
          ? dlInfo?.toData()
          : null,
      extra_data: [PlatformData(data: platform, length: 0, required: false,
          title: 'OS', type: 'string')],
      extras: extras.map((elem) => elem.toData()).toList(),
      flight_number: flightNumber,
      comments: comments,
      new_client: newClient,
    );
  }
}

class DomainClient {
  final String firstName;
  final String lastName;
  final String? patronymic;
  final String? phone;
  final String email;
  final String? country;
  final String? address;
  final String? birthday;
  final int? clientId;

  DomainClient({
    required this.firstName,
    required this.lastName,
    this.patronymic,
    this.phone,
    required this.email,
    this.country,
    this.address,
    this.birthday,
    this.clientId,
  });

  factory DomainClient.fromPress(PresentationClient press) {
    return DomainClient(
      firstName: press.firstName,
      lastName: press.lastName,
      patronymic: press.patronymic,
      phone: press.phone,
      email: press.email,
      country: press.country,
      address: press.address,
      birthday: press.birthday,
      clientId: press.clientId,
    );
  }

  Client toDomain() {
    return Client(
      first_name: firstName,
      last_name: lastName,
      patronomic: patronymic,
      phone: phone,
      email: email,
      country: country,
      address: address,
      birthday: birthday,
      client_id: clientId,
    );
  }
}

class DomainDriverLicense {
  final String? number;
  final String? issueDate;

  DomainDriverLicense({
    this.number,
    this.issueDate,
  });

  factory DomainDriverLicense.fromPress(PresentationDriverLicense press) {
    return DomainDriverLicense(
      number: press.number,
      issueDate: press.issueDate,
    );
  }

  DriverLicense toData() {
    return DriverLicense(
      number: number,
      issue_date: issueDate,
    );
  }
}

class DomainPassport {
  final String? number;
  final String? country;
  final String? issue;
  final String? issueDate;

  DomainPassport({
    this.number,
    this.country,
    this.issue,
    this.issueDate,
  });

  factory DomainPassport.fromPress(PresentationPassport press) {
    return DomainPassport(
      number: press.number,
      country: press.country,
      issue: press.issue,
      issueDate: press.issueDate,
    );
  }

  Passport toData() {
    return Passport(
      number: number,
      country: country,
      issue: issue,
      issue_date: issueDate,
    );
  }
}

class DomainOrderExtra {
  final String extrasShortCode;
  final int quantity;
  final String adr;

  DomainOrderExtra({
    required this.extrasShortCode,
    required this.quantity,
    required this.adr,
  });

  factory DomainOrderExtra.fromPress(PresentationOrderExtra press) {
    return DomainOrderExtra(
      extrasShortCode: press.extrasShortCode,
      quantity: press.quantity,
      adr: press.adr,
    );
  }

  OrderExtra toData() {
    return OrderExtra(
      extras_short_code: extrasShortCode,
      quantity: quantity,
      adr: adr,
    );
  }
}
