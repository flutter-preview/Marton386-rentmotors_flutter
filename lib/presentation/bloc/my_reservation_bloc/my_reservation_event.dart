part of 'my_reservation_bloc.dart';

@freezed
class MyReservationEvent with _$MyReservationEvent {
  const factory MyReservationEvent.fetch() = MyReservationEventFetch;
}