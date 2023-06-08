import '../../utils/result.dart';
import 'package:rentmotors/presentation/models/responses/presentation_station.dart';

abstract class StationInteractor {
  Future<Result<List<PresentationStation>>> getStations();
}