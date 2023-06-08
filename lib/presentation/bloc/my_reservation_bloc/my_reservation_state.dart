part of 'my_reservation_bloc.dart';

@freezed
class MyReservationState with _$MyReservationState {
  const factory MyReservationState.loaded() = MyReservationStateLoaded;
  const factory MyReservationState.loading() = MyReservationStateLoading;
  const factory MyReservationState.canceled() = MyReservationStateCanceled;
  const factory MyReservationState.error({required String error}) = MyReservationStateError;
}