import 'package:get_it/get_it.dart';
import '../repository/car_repository.dart';
import 'package:rentmotors/utils/result.dart';
import '../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../presentation/interactors/car_interactor.dart';
import '../models/responses/domain_search_car_response.dart';
import '../../data/models/responses/search_car_response/data_search_car_response.dart';
import 'package:rentmotors/presentation/models/responses/presentation_search_car_response.dart';

class CarInteractorImpl implements CarInteractor {
  var carRepository = GetIt.instance<CarRepository>();

  @override
  Future<Result<PresentationSearchCarResponse>> getCars(int stationPickUp,
      int stationDropOff, String datePickUp, String dateDropOff) async {
    Result<DataSearchCarResponse> result = await carRepository.getCars(
        stationPickUp, stationDropOff, datePickUp, dateDropOff);
    if (result is Success<DataSearchCarResponse>) {
      DomainSearchCarResponse data = DomainSearchCarResponse.fromData(result.data);
      return Success(data.toPress());
    } else if (result is Error<DataSearchCarResponse>) {
      String error = result.errorCode;
      return Error(error);
    } else {
      return Error(LocaleKeys.failure.tr());
    }
  }
}