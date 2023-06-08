part of 'new_booking_bloc.dart';

@freezed
class NewBookingEvent with _$NewBookingEvent {
  const factory NewBookingEvent.fetch() = NewBookingEventFetch;
}