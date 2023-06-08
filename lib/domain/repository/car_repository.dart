import '../../utils/result.dart';
import '../../data/models/responses/search_car_response/data_search_car_response.dart';

abstract class CarRepository {
  Future<Result<DataSearchCarResponse>> getCars(int stationPickUp,
      int stationDropOff, String datePickUp, String dateDropOff);
}