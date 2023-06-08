import '../../../utils/result.dart';
import 'package:get_it/get_it.dart';
import '../../interactors/res_interactor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../viewModels/profile_view_model.dart';
import '../../../res/generated/locale_keys.g.dart';
import '../../models/responses/presentation_cancel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_reservation_bloc.freezed.dart';
part 'my_reservation_event.dart';
part 'my_reservation_state.dart';

class MyReservationBloc extends Bloc<MyReservationEvent, MyReservationState> {
  final ResInteractor resInteractor = GetIt.instance<ResInteractor>();
  final ProfileViewModel profileViewModel = GetIt.instance<ProfileViewModel>();

  MyReservationBloc() : super(const MyReservationState.loaded()) {
    on<MyReservationEventFetch>((event, emit) async {
      emit(const MyReservationState.loading());
      try {
        String resID = profileViewModel.reservation?.resId ?? "";
        String email = profileViewModel.reservation?.clientInfo.email ?? "";
        Result<PresentationCancel> result =
            await resInteractor.getCancel(resID, email);
        if (result is Success<PresentationCancel>) {
          profileViewModel.reservation = null;
          emit(const MyReservationState.canceled());
        } else if (result is Error<PresentationCancel>) {
          String error = result.errorCode;
          emit(MyReservationState.error(error: error));
        } else {
          emit(MyReservationState.error(
              error: LocaleKeys.cancel_res_error.tr()));
        }
      } catch (e) {
        emit(MyReservationState.error(error: e.toString()));
      }
    });
  }
}