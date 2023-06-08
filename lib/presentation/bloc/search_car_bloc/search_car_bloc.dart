import '../../../utils/result.dart';
import 'package:get_it/get_it.dart';
import '../../interactors/car_interactor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../viewModels/search_car_view_model.dart';
import '../../viewModels/booking_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/responses/presentation_search_car_response.dart';

part 'search_car_bloc.freezed.dart';
part 'search_car_event.dart';
part 'search_car_state.dart';

class SearchCarBloc extends Bloc<SearchCarEvent, SearchCarState> {
  final CarInteractor carInteractor = GetIt.instance<CarInteractor>();
  final SearchCarViewModel searchCarViewModel = GetIt.instance<SearchCarViewModel>();
  final BookingViewModel startBookingViewModel = GetIt.instance<BookingViewModel>();

  SearchCarBloc() : super(const SearchCarState.loading()) {
    on<SearchCarEventFetch>((event, emit) async {
      emit(const SearchCarState.loading());
      try {
        Result<PresentationSearchCarResponse> result;
        if (startBookingViewModel.searchForBooking) {
          result = await carInteractor.getCars(
            startBookingViewModel.startStation?.id ?? 2,
            startBookingViewModel.endStation?.id ?? 2,
            startBookingViewModel.startBookingDate,
            startBookingViewModel.endBookingDate,
          );
        } else {
          result = await carInteractor.getCars(
            searchCarViewModel.stationPickUp,
            searchCarViewModel.stationDropOff,
            searchCarViewModel.datePickUp,
            searchCarViewModel.dateDropOff,
          );
        }
        if (result is Success<PresentationSearchCarResponse>) {
          if (startBookingViewModel.searchForBooking) {
            startBookingViewModel.searchForBooking = false;
            startBookingViewModel.searchCars = result.data;
          } else {
            searchCarViewModel.searchCars = result.data;
          }
          emit(const SearchCarState.loaded());
        } else if (result is Error<PresentationSearchCarResponse>) {
          emit(const SearchCarState.nothingFound());
        } else {
          emit(const SearchCarState.nothingFound());
        }
      } catch (_) {
        emit(const SearchCarState.nothingFound());
      }
    });
  }
}