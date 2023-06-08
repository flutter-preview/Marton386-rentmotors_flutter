import 'package:rentmotors/data/models/responses/fee/data_fee.dart';
import 'package:rentmotors/presentation/models/responses/car/presentation_fee.dart';

class DomainFee {
  final String code;
  final String name;
  final double price;
  final String currency;

  DomainFee({
    required this.code,
    required this.name,
    required this.price,
    required this.currency,
  });

  factory DomainFee.fromData(DataFee data, String currency) {
    return DomainFee(
      code: data.code,
      name: data.description,
      price: data.cost,
      currency: currency,
    );
  }

  PresentationFee toPress() {
    return PresentationFee(
      code: code,
      name: name,
      price: price,
      currency: currency,
    );
  }
}
