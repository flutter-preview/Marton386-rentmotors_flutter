import 'car/domain_car.dart';
import 'domain_station.dart';
import '../../../data/models/responses/currency/data_currency.dart';
import '../../../presentation/models/responses/presentation_reservation_response.dart';
import '../../../data/models/responses/reservation_response/data_reservation_response.dart';

class DomainReservationResponse {
  final String resId;
  final DomainResClientInfo clientInfo;
  final DomainDlInfo dlInfo;
  final DomainPassportInfo passportInfo;
  final String flightNumber;
  final DomainPaymentInfo paymentInfo;
  final String comment;
  final String lng;
  final String bookingDate;
  final DomainDetails details;
  final String supplierResId;
  final int status;

  DomainReservationResponse({
    required this.resId,
    required this.clientInfo,
    required this.dlInfo,
    required this.passportInfo,
    required this.flightNumber,
    required this.paymentInfo,
    required this.comment,
    required this.lng,
    required this.bookingDate,
    required this.details,
    required this.supplierResId,
    required this.status,
  });

  factory DomainReservationResponse.fromData(DataReservationResponse data) {
    return DomainReservationResponse(
      resId: data.res_id,
      clientInfo: DomainResClientInfo.fromData(data.client_info),
      dlInfo: DomainDlInfo.fromData(data.dl_info),
      passportInfo: DomainPassportInfo.fromData(data.passport_info),
      flightNumber: data.flight_number,
      paymentInfo: DomainPaymentInfo.fromData(data.payment_info),
      comment: data.comment,
      lng: data.lng,
      bookingDate: data.booking_date,
      details: DomainDetails.fromData(data.details),
      supplierResId: data.supplier_res_id,
      status: data.status,
    );
  }

  PresentationReservationResponse toPress() {
    return PresentationReservationResponse(
      resId: resId,
      clientInfo: clientInfo.toPress(),
      dlInfo: dlInfo.toPress(),
      passportInfo: passportInfo.toPress(),
      flightNumber: flightNumber,
      paymentInfo: paymentInfo.toPress(),
      comment: comment,
      lng: lng,
      bookingDate: bookingDate,
      details: details.toPress(),
      supplierResId: supplierResId,
      status: status,
    );
  }
}

class DomainResClientInfo {
  final String firstName;
  final String lastName;
  final String? patronymic;
  final String? phone;
  final String email;
  final String? postCode;
  final String? country;
  final String? city;
  final String? address;
  final String? birthday;

  DomainResClientInfo({
    required this.firstName,
    required this.lastName,
    this.patronymic,
    this.phone,
    required this.email,
    this.postCode,
    this.country,
    this.city,
    this.address,
    this.birthday,
  });

  factory DomainResClientInfo.fromPress(PresentationResClientInfo press) {
    return DomainResClientInfo(
      firstName: press.firstName,
      lastName: press.lastName,
      patronymic: press.patronymic,
      phone: press.phone,
      email: press.email,
      postCode: press.postCode,
      country: press.country,
      city: press.city,
      address: press.address,
      birthday: press.birthday,
    );
  }

  factory DomainResClientInfo.fromData(ClientInfo data) {
    return DomainResClientInfo(
      firstName: data.first_name,
      lastName: data.last_name,
      patronymic: data.patronymic,
      phone: data.phone,
      email: data.email,
      postCode: data.post_code,
      country: data.country,
      city: data.city,
      address: data.address,
      birthday: data.birthday,
    );
  }

  ClientInfo toData() {
    return ClientInfo(
      first_name: firstName,
      last_name: lastName,
      patronymic: patronymic,
      phone: phone,
      email: email,
      post_code: postCode,
      country: country,
      city: city,
      address: address,
      birthday: birthday,
    );
  }

  PresentationResClientInfo toPress() {
    return PresentationResClientInfo(
      firstName: firstName,
      lastName: lastName,
      patronymic: patronymic,
      phone: phone,
      email: email,
      postCode: postCode,
      country: country,
      city: city,
      address: address,
      birthday: birthday,
    );
  }
}

class DomainDlInfo {
  final String? number;
  final String? country;
  final String? expirationDate;
  final String? issueDate;

  DomainDlInfo({
    this.number,
    this.country,
    this.expirationDate,
    this.issueDate,
  });

  factory DomainDlInfo.fromData(DlInfo data) {
    return DomainDlInfo(
      number: data.number,
      country: data.country,
      expirationDate: data.expiration_date,
      issueDate: data.issue_date,
    );
  }

  PresentationDlInfo toPress() {
    return PresentationDlInfo(
      number: number,
      country: country,
      expirationDate: expirationDate,
      issueDate: issueDate,
    );
  }
}

class DomainPassportInfo {
  final String number;
  final String country;
  final String expirationDate;
  final String issueDate;
  final String issue;
  final String? birthPlace;

  DomainPassportInfo({
    required this.number,
    required this.country,
    required this.expirationDate,
    required this.issueDate,
    required this.issue,
    this.birthPlace,
  });

  factory DomainPassportInfo.fromData(PassportInfo data) {
    return DomainPassportInfo(
      number: data.number,
      country: data.country,
      expirationDate: data.expiration_date,
      issueDate: data.issue_date,
      issue: data.issue,
      birthPlace: data.birth_place,
    );
  }

  PresentationPassportInfo toPress() {
    return PresentationPassportInfo(
      number: number,
      country: country,
      expirationDate: expirationDate,
      issueDate: issueDate,
      issue: issue,
      birthPlace: birthPlace,
    );
  }
}

class DomainPaymentInfo {
  final String cardNumber;
  final String cardHolder;
  final String cardExpiration;
  final String cardType;
  final int cvv;

  DomainPaymentInfo({
    required this.cardNumber,
    required this.cardHolder,
    required this.cardExpiration,
    required this.cardType,
    required this.cvv,
  });

  factory DomainPaymentInfo.fromData(PaymentInfo data) {
    return DomainPaymentInfo(
      cardNumber: data.card_number,
      cardHolder: data.card_holder,
      cardExpiration: data.card_expiration,
      cardType: data.card_type,
      cvv: data.cvv,
    );
  }

  PresentationPaymentInfo toPress() {
    return PresentationPaymentInfo(
      cardNumber: cardNumber,
      cardHolder: cardHolder,
      cardExpiration: cardExpiration,
      cardType: cardType,
      cvv: cvv,
    );
  }
}

class DomainDetails {
  final DomainStation pickup;
  final DomainStation dropoff;
  final DomainCar car;
  final DomainCurrency currency;
  final String pickupDate;
  final String dropoffDate;
  final int days;
  DomainPromoRes? p;

  DomainDetails({
    required this.pickup,
    required this.dropoff,
    required this.car,
    required this.currency,
    required this.pickupDate,
    required this.dropoffDate,
    required this.days,
    this.p,
  });

  factory DomainDetails.fromData(Details data) {
    return DomainDetails(
      pickup: DomainStation.fromData(data.pickup),
      dropoff: DomainStation.fromData(data.dropoff),
      car: DomainCar.fromData(data.car, data.days, data.currency.short_title),
      currency: DomainCurrency.fromData(data.currency),
      pickupDate: data.pickup_date,
      dropoffDate: data.dropoff_date,
      days: data.days,
      p: (data.p != null) ? DomainPromoRes.fromData(data.p!) : null,
    );
  }

  PresentationDetails toPress() {
    return PresentationDetails(
      pickup: pickup.toPress(),
      dropoff: dropoff.toPress(),
      car: car.toPress(),
      currency: currency.toPress(),
      pickupDate: pickupDate,
      dropoffDate: dropoffDate,
      days: days,
      p: (p != null) ? p!.toPress() : null,
    );
  }
}

class DomainPromoRes {
  final String codeval;
  final String titleval;
  final String descriptionval;
  final int? typeval;
  final int? valueval;
  final String? saleTypeval;
  final String? saleValueval;

  DomainPromoRes({
    required this.codeval,
    required this.titleval,
    required this.descriptionval,
    this.typeval,
    this.valueval,
    this.saleTypeval,
    this.saleValueval,
  });

  factory DomainPromoRes.fromData(PromoRes data) {
    return DomainPromoRes(
      codeval: data.codeval,
      titleval: data.titleval,
      descriptionval: data.descriptionval,
      typeval: data.typeval,
      valueval: data.valueval,
      saleTypeval: data.sale_typeval,
      saleValueval: data.sale_valueval,
    );
  }

  PresentationPromoRes toPress() {
    return PresentationPromoRes(
      codeval: codeval,
      titleval: titleval,
      descriptionval: descriptionval,
      typeval: typeval,
      valueval: valueval,
      saleTypeval: saleTypeval,
      saleValueval: saleValueval,
    );
  }
}

class DomainCurrency {
  final int id;
  final String title;
  final String shortTitle;
  final String shortCode;

  DomainCurrency({
    required this.id,
    required this.title,
    required this.shortTitle,
    required this.shortCode,
  });

  factory DomainCurrency.fromData(DataCurrency data) {
    return DomainCurrency(
      id: data.id,
      title: data.title,
      shortTitle: data.short_title,
      shortCode: data.short_code,
    );
  }

  PresentationCurrency toPress() {
    return PresentationCurrency(
      id: id,
      title: title,
      shortTitle: shortTitle,
      shortCode: shortCode,
    );
  }
}
