import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import 'package:rentmotors/utils/result.dart';
import '../../domain/repository/station_repository.dart';
import 'package:rentmotors/data/models/responses/station/data_station.dart';

class StationRepositoryImpl implements StationRepository {
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  Future<Result<List<DataStation>>> getStations() async {
    return networkStore.getStations();
  }
}