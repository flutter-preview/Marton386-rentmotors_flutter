import 'package:get_it/get_it.dart';
import 'package:rentmotors/utils/result.dart';
import '../repository/station_repository.dart';
import '../../res/generated/locale_keys.g.dart';
import '../models/responses/domain_station.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../data/models/responses/station/data_station.dart';
import '../../presentation/interactors/station_interactor.dart';
import 'package:rentmotors/presentation/models/responses/presentation_station.dart';

class StationInteractorImpl implements StationInteractor {
  var stationRepository = GetIt.instance<StationRepository>();

  @override
  Future<Result<List<PresentationStation>>> getStations() async {
    Result<List<DataStation>> result = await stationRepository.getStations();
    if (result is Success<List<DataStation>>) {
      List<DomainStation> data = result.data.map((elem) => DomainStation
          .fromData(elem)).toList();
      List<PresentationStation> pressData = data.map((elem) => elem.toPress())
          .toList();
      return Success(pressData);
    } else if (result is Error<List<DataStation>>) {
      String error = result.errorCode;
      return Error(error);
    } else {
      return Error(LocaleKeys.failure.tr());
    }
  }
}