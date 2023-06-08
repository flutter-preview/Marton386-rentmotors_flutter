import '../../utils/result.dart';
import '../../data/models/responses/station/data_station.dart';

abstract class StationRepository {
  Future<Result<List<DataStation>>> getStations();
}