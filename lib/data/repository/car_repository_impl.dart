import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import 'package:rentmotors/utils/result.dart';
import '../../domain/repository/car_repository.dart';
import 'package:rentmotors/data/models/responses/search_car_response/data_search_car_response.dart';

class CarRepositoryImpl implements CarRepository {
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  Future<Result<DataSearchCarResponse>> getCars(int stationPickUp,
      int stationDropOff, String datePickUp, String dateDropOff) async {
    return await networkStore.getCars(stationPickUp, stationDropOff, datePickUp,
        dateDropOff);
  }
}