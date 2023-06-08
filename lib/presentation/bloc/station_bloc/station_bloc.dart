import '../../../utils/result.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../viewModels/station_view_model.dart';
import '../../interactors/station_interactor.dart';
import '../../../res/generated/locale_keys.g.dart';
import '../../viewModels/booking_view_model.dart';
import '../../models/responses/presentation_station.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_bloc.freezed.dart';
part 'station_event.dart';
part 'station_state.dart';

class StationBloc extends Bloc<StationEvent, StationState> {
  var stationViewModel = GetIt.instance<StationViewModel>();
  var stationInteractor = GetIt.instance<StationInteractor>();
  final BookingViewModel startBookViewModel =
  GetIt.instance<BookingViewModel>();

  StationBloc() : super(const StationState.loading()) {
    on<StationEventFetch>((event, emit) async {
      if (stationViewModel.stations.isEmpty) {
        emit(const StationState.loading());
        try {
          Result<List<PresentationStation>> result = await stationInteractor
              .getStations();
          if (result is Success<List<PresentationStation>>) {
            stationViewModel.setStations(result.data);
            startBookViewModel.setStations(result.data);
            emit(const StationState.loaded());
          } else if (result is Error<List<PresentationStation>>) {
            emit(StationState.error(error: result.errorCode));
          }
        } catch (e) {
          emit(StationState.error(error: LocaleKeys.failure.tr()));
        }
      } else {
        emit(const StationState.loaded());
      }
    });
  }
}