import 'domain_fee.dart';
import 'domain_extra.dart';
import 'package:rentmotors/data/models/responses/car/data_car.dart';
import '../../../../presentation/models/responses/car/presentation_car.dart';

class DomainCar {
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
  final List<DomainExtra> extras;
  final List<DomainFee> fees;
  final int ev;
  final DomainPromo? promo;

  DomainCar({
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

  factory DomainCar.fromData(DataCar data, int days, String currency) {
    return DomainCar(
      id: data.car_id,
      code: data.car_info.code,
      model: data.car_info.car_name,
      perDayPrice: data.net_rate / days,
      price: data.net_rate,
      currency: currency,
      deposit: data.car_info.deposit,
      seats: data.car_info.seats,
      doors: data.car_info.doors,
      bag: data.car_info.bag_small,
      luggage: data.car_info.bag_big,
      at: data.car_info.at == 1,
      ac: data.car_info.ac == 1,
      includedFeatures: data.included_features,
      mileage: data.mileage,
      urlImg: data.car_info.car_url_transparent,
      onRequest: data.on_request,
      extras: data.extras
          .map((elem) => DomainExtra.fromData(elem, currency))
          .toList(),
      fees:
          data.fees.map((elem) => DomainFee.fromData(elem, currency)).toList(),
      ev: data.car_info.ev,
      promo: (data.promo != null) ?
      DomainPromo(
        title: data.promo?.title ?? "",
        description: data.promo?.description ?? "",
      ) : null,
    );
  }

  PresentationCar toPress() {
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
      includedFeatures: includedFeatures,
      mileage: mileage,
      urlImg: urlImg,
      onRequest: onRequest,
      extras: extras.map((elem) => elem.toPress()).toList(),
      fees: fees.map((elem) => elem.toPress()).toList(),
      ev: ev,
      promo: (promo != null) ?
      PressPromo(
        title: promo?.title ?? "",
        description: promo?.description ?? "",
      ) : null,
    );
  }
}

class DomainPromo {
  String title;
  String description;

  DomainPromo({
    required this.title,
    required this.description,
  });
}
