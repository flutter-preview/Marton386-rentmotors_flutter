import '../models/responses/presentation_search_car_response.dart';

class SearchCarViewModel {
  int stationPickUp = -1;
  int stationDropOff = -1;
  String datePickUp = "";
  String dateDropOff = "";
  PresentationSearchCarResponse? searchCars;

  void clear() {
    stationPickUp = -1;
    stationDropOff = -1;
    datePickUp = "";
    dateDropOff = "";
    searchCars = null;
  }
}