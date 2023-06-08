import '../../utils/result.dart';
import '../models/responses/presentation_search_car_response.dart';

abstract class CarInteractor {
  Future<Result<PresentationSearchCarResponse>> getCars(int stationPickUp,
      int stationDropOff, String datePickUp, String dateDropOff);
}