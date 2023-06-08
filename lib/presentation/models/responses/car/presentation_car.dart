import 'package:rentmotors/presentation/models/responses/car/presentation_fee.dart';
import 'package:rentmotors/presentation/models/responses/car/presentation_extra.dart';

class PresentationCar {
  final String id;
  final String code;
  final String model;
  final double perDayPrice;
  final double price;
  final String currency;
  final double deposit;
  final int seats;
  final int doors;
  final int bag;
  final int luggage;
  final bool at; // auto transmission
  final bool ac; // conditioner
  final List<String> includedFeatures;
  final int mileage;
  final String urlImg;
  final bool onRequest;
  List<PresentationExtra> extras;
  final List<PresentationFee> fees;
  final int ev;
  final PressPromo? promo;

  PresentationCar({
    required this.id,
    required this.code,
    required this.model,
    required this.perDayPrice,
    required this.price,
    required this.currency,
    required this.deposit,
    required this.seats,
    required this.doors,
    required this.bag,
    required this.luggage,
    required this.at,
    required this.ac,
    required this.includedFeatures,
    required this.mileage,
    required this.urlImg,
    required this.onRequest,
    required this.extras,
    required this.fees,
    required this.ev,
    this.promo,
  });

  bool extrasIsEmpty() {
    bool checker = true;
    for (var i in extras) {
      if (i.amount != 0) {
        checker = false;
      }
    }
    return checker;
  }

  PresentationCar clone() {
    return PresentationCar(
      id: id,
      code: code,
      model: model,
      perDayPrice: perDayPrice,
      price: price,
      currency: currency,
      deposit: deposit,
      seats: seats,
      doors: doors,
      bag: bag,
      luggage: luggage,
      at: at,
      ac: ac,
      includedFeatures: List.from(includedFeatures),
      mileage: mileage,
      urlImg: urlImg,
      onRequest: onRequest,
      extras: List.from(extras.map((extra) => extra.clone())),
      fees: List.from(fees.map((fee) => fee.clone())),
      ev: ev,
      promo: promo != null ? PressPromo(
        title: promo!.title,
        description: promo!.description,
      ) : null,
    );
  }
}

class PressPromo {
  String title;
  String description;

  PressPromo({
    required this.title,
    required this.description,
  });
}