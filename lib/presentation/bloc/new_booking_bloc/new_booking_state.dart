part of 'new_booking_bloc.dart';

@freezed
class NewBookingState with _$NewBookingState {
  const factory NewBookingState.loaded() = NewBookingStateLoaded;
  const factory NewBookingState.loading() = NewBookingStateLoading;
  const factory NewBookingState.error({required String error}) = NewBookingStateError;
}