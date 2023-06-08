class PresentationBookingRequest {
  final String carId;
  final PresentationClient clientInfo;
  final PresentationPassport? passportInfo;
  final PresentationDriverLicense? dlInfo;
  final List<PresentationOrderExtra> extras;
  final String flightNumber;
  final String comments;
  final int newClient;

  PresentationBookingRequest({
    required this.carId,
    required this.clientInfo,
    this.passportInfo,
    this.dlInfo,
    required this.extras,
    required this.flightNumber,
    required this.comments,
    required this.newClient,
  });
}

class PresentationClient {
  final String firstName;
  final String lastName;
  final String? patronymic;
  final String? phone;
  final String email;
  final String? country;
  final String? address;
  final String? birthday;
  final int? clientId;

  PresentationClient({
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
}

class PresentationDriverLicense {
  final String? number;
  final String? issueDate;

  PresentationDriverLicense({
    this.number,
    this.issueDate,
  });
}

class PresentationPassport {
  final String? number;
  final String? country;
  final String? issue;
  final String? issueDate;

  PresentationPassport({
    this.number,
    this.country,
    this.issue,
    this.issueDate,
  });
}

class PresentationOrderExtra {
  final String extrasShortCode;
  final int quantity;
  final String adr;

  PresentationOrderExtra({
    required this.extrasShortCode,
    required this.quantity,
    required this.adr,
  });
}
