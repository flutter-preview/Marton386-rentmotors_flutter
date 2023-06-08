part of 'search_car_bloc.dart';

@freezed
class SearchCarState with _$SearchCarState {
  const factory SearchCarState.loaded() = SearchCarStateLoaded;
  const factory SearchCarState.loading() = SearchCarStateLoading;
  const factory SearchCarState.nothingFound() = SearchCarStateNothingFound;
}