part of 'regular_booking_bloc.dart';

@freezed
class RegularBookingEvent with _$RegularBookingEvent {
  const factory RegularBookingEvent.fetch() = RegularBookingEventFetch;
}