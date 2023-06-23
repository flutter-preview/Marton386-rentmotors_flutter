import '../../../utils/result.dart';
import 'package:get_it/get_it.dart';
import '../../interactors/res_interactor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../viewModels/profile_view_model.dart';
import '../../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/responses/presentation_reservation_response.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ResInteractor resInteractor = GetIt.instance<ResInteractor>();
  final ProfileViewModel profViewModel = GetIt.instance<ProfileViewModel>();

  ProfileBloc() : super(const ProfileState.loaded()) {
    on<ProfileEventFetch>((event, emit) async {
      emit(const ProfileState.loading());
      try {
        String email = "";
        if (profViewModel.savedEmail != null) {
          email = profViewModel.savedEmail!;
        } else {
          email = profViewModel.emailController.text;
        }
        Result<PresentationReservationResponse> result =
        await resInteractor.getReservation(
          profViewModel.reservationController.text,
          email,
        );
        if (result is Success<PresentationReservationResponse>) {
          profViewModel.reservation = result.data;
          if (result.data.status == 0 || result.data.status == 1 ||
              result.data.status == 3) {
            emit(const ProfileState.successLoaded());
          } else {
            profViewModel.firstNotFound = true;
            emit(ProfileState.error(error: LocaleKeys.your_res_no_found.tr()));
          }
        } else if (result is Error<PresentationReservationResponse>) {
          profViewModel.firstNotFound = true;
          String error = result.errorCode;
          emit(ProfileState.error(error: error));
        } else {
          profViewModel.firstNotFound = true;
          emit(ProfileState.error(error: LocaleKeys.failure.tr()));
        }
      } catch (e) {
        profViewModel.firstNotFound = true;
        emit(ProfileState.error(error: e.toString()));
      }
    });
  }
}