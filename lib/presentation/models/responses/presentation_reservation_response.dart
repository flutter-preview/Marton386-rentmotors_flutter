import 'car/presentation_car.dart';
import 'package:rentmotors/presentation/models/responses/presentation_station.dart';

class PresentationReservationResponse {
  final String resId;
  final PresentationResClientInfo clientInfo;
  final PresentationDlInfo dlInfo;
  final PresentationPassportInfo passportInfo;
  String flightNumber;
  final PresentationPaymentInfo paymentInfo;
  String comment;
  final String lng;
  final String bookingDate;
  final PresentationDetails details;
  final String supplierResId;
  final int status;

  PresentationReservationResponse({
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

  PresentationReservationResponse clone() {
    return PresentationReservationResponse(
      resId: resId,
      clientInfo: clientInfo.clone(),
      dlInfo: dlInfo.clone(),
      passportInfo: passportInfo.clone(),
      flightNumber: flightNumber,
      paymentInfo: paymentInfo.clone(),
      comment: comment,
      lng: lng,
      bookingDate: bookingDate,
      details: details.clone(),
      supplierResId: supplierResId,
      status: status,
    );
  }
}

class PresentationResClientInfo {
  final String firstName;
  final String lastName;
  final String? patronymic;
  String? phone;
  String email;
  final String? postCode;
  final String? country;
  final String? city;
  final String? address;
  final String? birthday;

  PresentationResClientInfo({
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

  PresentationResClientInfo clone() {
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

class PresentationDlInfo {
  final String? number;
  final String? country;
  final String? expirationDate;
  final String? issueDate;

  PresentationDlInfo({
    this.number,
    this.country,
    this.expirationDate,
    this.issueDate,
  });

  PresentationDlInfo clone() {
    return PresentationDlInfo(
      number: number,
      country: country,
      expirationDate: expirationDate,
      issueDate: issueDate,
    );
  }
}

class PresentationPassportInfo {
  final String number;
  final String country;
  final String expirationDate;
  final String issueDate;
  final String issue;
  final String? birthPlace;

  PresentationPassportInfo({
    required this.number,
    required this.country,
    required this.expirationDate,
    required this.issueDate,
    required this.issue,
    this.birthPlace,
  });

  PresentationPassportInfo clone() {
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

class PresentationPaymentInfo {
  final String cardNumber;
  final String cardHolder;
  final String cardExpiration;
  final String cardType;
  final int cvv;

  PresentationPaymentInfo({
    required this.cardNumber,
    required this.cardHolder,
    required this.cardExpiration,
    required this.cardType,
    required this.cvv,
  });

  PresentationPaymentInfo clone() {
    return PresentationPaymentInfo(
      cardNumber: cardNumber,
      cardHolder: cardHolder,
      cardExpiration: cardExpiration,
      cardType: cardType,
      cvv: cvv,
    );
  }
}

class PresentationDetails {
  final PresentationStation pickup;
  final PresentationStation dropoff;
  PresentationCar car;
  final PresentationCurrency currency;
  String pickupDate;
  String dropoffDate;
  final int days;
  PresentationPromoRes? p;

  PresentationDetails({
    required this.pickup,
    required this.dropoff,
    required this.car,
    required this.currency,
    required this.pickupDate,
    required this.dropoffDate,
    required this.days,
    this.p,
  });

  PresentationDetails clone() {
    return PresentationDetails(
      pickup: pickup,
      dropoff: dropoff,
      car: car,
      currency: currency,
      pickupDate: pickupDate,
      dropoffDate: dropoffDate,
      days: days,
      p: p?.clone(),
    );
  }
}

class PresentationPromoRes {
  final String codeval;
  final String titleval;
  final String descriptionval;
  final int? typeval;
  final int? valueval;
  final String? saleTypeval;
  final String? saleValueval;

  PresentationPromoRes({
    required this.codeval,
    required this.titleval,
    required this.descriptionval,
    this.typeval,
    this.valueval,
    this.saleTypeval,
    this.saleValueval,
  });

  PresentationPromoRes clone() {
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

class PresentationCurrency {
  final int id;
  final String title;
  final String shortTitle;
  final String shortCode;

  PresentationCurrency({
    required this.id,
    required this.title,
    required this.shortTitle,
    required this.shortCode,
  });

  PresentationCurrency clone() {
    return PresentationCurrency(
      id: id,
      title: title,
      shortTitle: shortTitle,
      shortCode: shortCode,
    );
  }
}