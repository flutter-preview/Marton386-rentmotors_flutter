import 'package:rentmotors/data/models/responses/extra/data_extra.dart';
import '../../../../presentation/models/responses/car/presentation_extra.dart';

class DomainExtra {
  final String code;
  final String name;
  final String description;
  double price;
  final String currency;
  int amount;
  final int maxCount;
  final String? address;
  final bool perDayPay;

  DomainExtra({
    required this.code,
    required this.name,
    required this.description,
    required this.price,
    required this.currency,
    required this.amount,
    required this.maxCount,
    this.address,
    required this.perDayPay,
  });

  factory DomainExtra.fromData(DataExtra data, String currency) {
    return DomainExtra(
      code: data.short_code,
      name: data.title,
      description: data.description,
      price: data.price,
      currency: currency,
      amount: data.quantity ?? 0,
      maxCount: data.max_count,
      address: data.adr,
      perDayPay: data.per_what == 1,
    );
  }

  PresentationExtra toPress() {
    return PresentationExtra(
      code: code,
      name: name,
      description: description,
      price: price,
      currency: currency,
      amount: amount,
      maxCount: maxCount,
      address: address,
      perDayPay: perDayPay,
    );
  }
}
