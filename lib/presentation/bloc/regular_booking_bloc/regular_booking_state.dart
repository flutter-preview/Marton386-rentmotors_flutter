part of 'regular_booking_bloc.dart';

@freezed
class RegularBookingState with _$RegularBookingState {
  const factory RegularBookingState.loading() = RegularBookingStateLoading;
  const factory RegularBookingState.loaded() = RegularBookingStateLoaded;
  const factory RegularBookingState.error({required String error}) = RegularBookingStateError;
}