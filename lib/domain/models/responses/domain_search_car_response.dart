import 'car/domain_car.dart';
import '../../../presentation/models/responses/presentation_search_car_response.dart';
import '../../../data/models/responses/search_car_response/data_search_car_response.dart';

class DomainSearchCarResponse {
  final List<DomainCar> cars;
  final int days;
  final String currency;

  DomainSearchCarResponse({
    required this.cars,
    required this.days,
    required this.currency,
  });

  factory DomainSearchCarResponse.fromData(DataSearchCarResponse data) {
    return DomainSearchCarResponse(
      cars: data.cars
          .map((elem) =>
              DomainCar.fromData(elem, data.days, data.currency.short_title))
          .toList(),
      days: data.days,
      currency: data.currency.short_title,
    );
  }

  PresentationSearchCarResponse toPress() {
    return PresentationSearchCarResponse(
      cars: cars.map((elem) => elem.toPress()).toList(),
      days: days,
      currency: currency,
    );
  }
}