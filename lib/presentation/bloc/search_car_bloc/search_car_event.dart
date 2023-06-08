part of 'search_car_bloc.dart';

@freezed
class SearchCarEvent with _$SearchCarEvent {
  const factory SearchCarEvent.fetch() = SearchCarEventFetch;
}