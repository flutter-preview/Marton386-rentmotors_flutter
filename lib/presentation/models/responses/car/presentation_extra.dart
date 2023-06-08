import '../../constants/extra_type.dart';
import '../../../../utils/price_formatter.dart';

class PresentationExtra {
  final String code;
  final String name;
  final String description;
  double price;
  final String currency;
  int amount;
  final int maxCount;
  String? address;
  final bool perDayPay;

  PresentationExtra({
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

  String getShowPrice() {
    var showPrice = (amount > 0) ? price * amount : price;
    return PriceFormatter.format(showPrice);
  }

  double getTotalPrice() => (amount * price);

  bool isSelected() => (amount > 0);

  bool isMultiSelect() => (maxCount > 1);

  bool isChildSeat() {
    return code == ExtraType.childSeat0 ||
        code == ExtraType.childSeat1 ||
        code == ExtraType.childSeat2 ||
        code == ExtraType.childSeat3;
  }

  bool isInputVisible() {
    return (code == ExtraType.delivery || code == ExtraType.collect) &&
        isSelected();
  }

  PresentationExtra clone() {
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
