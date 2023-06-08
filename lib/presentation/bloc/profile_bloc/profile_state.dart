part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loaded() = ProfileStateLoaded;
  const factory ProfileState.loading() = ProfileStateLoading;
  const factory ProfileState.nothingFound() = ProfileStateNothingFound;
  const factory ProfileState.successLoaded() = ProfileStateSuccessLoaded;
  const factory ProfileState.error({required String error}) = ProfileStateError;
}