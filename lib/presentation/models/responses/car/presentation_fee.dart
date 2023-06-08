class PresentationFee {
  final String code;
  final String name;
  final double price;
  final String currency;

  PresentationFee({
    required this.code,
    required this.name,
    required this.price,
    required this.currency,
  });

  PresentationFee clone() {
    return PresentationFee(
      code: code,
      name: name,
      price: price,
      currency: currency,
    );
  }
}