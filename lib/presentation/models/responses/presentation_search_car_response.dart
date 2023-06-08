import 'car/presentation_car.dart';

class PresentationSearchCarResponse {
  final List<PresentationCar> cars;
  final int days;
  final String currency;

  PresentationSearchCarResponse({
    required this.cars,
    required this.days,
    required this.currency,
  });
}
