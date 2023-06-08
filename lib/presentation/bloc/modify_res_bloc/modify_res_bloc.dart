import '../../../utils/result.dart';
import 'package:get_it/get_it.dart';
import '../../interactors/res_interactor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../viewModels/profile_view_model.dart';
import '../../../res/generated/locale_keys.g.dart';
import '../../viewModels/modify_res_view_model.dart';
import '../../models/responses/presentation_modify.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/requests/presentation_booking_request.dart';
import '../../models/requests/presentation_modify_book_request.dart';

part 'modify_res_bloc.freezed.dart';

part 'modify_res_event.dart';

part 'modify_res_state.dart';

class ModifyResBloc extends Bloc<ModifyResEvent, ModifyResState> {
  final ResInteractor resInteractor = GetIt.instance<ResInteractor>();
  final ProfileViewModel profileViewModel = GetIt.instance<ProfileViewModel>();
  final ModifyResViewModel modResViewModel = GetIt.instance<ModifyResViewModel>();

  ModifyResBloc() : super(const ModifyResState.unmodified()) {
    on<ModifyResEventFetch>((event, emit) async {
      emit(const ModifyResState.loading());
      try {
        String resID = profileViewModel.reservation?.resId ?? "";
        List<PresentationOrderExtra> extras = [];
        for (var extra in modResViewModel.newReservation!.details.car
            .extras) {
          extras.add(
            PresentationOrderExtra(
              extrasShortCode: extra.code,
              quantity: extra.amount,
              adr: (extra.address != null) ? extra.address ?? "" : "",
            ),
          );
        }
        modResViewModel.newReservation?.comment = modResViewModel
            .commentController.text;
        modResViewModel.newReservation?.flightNumber = modResViewModel
            .flightNumberController.text;
        modResViewModel.newReservation?.clientInfo.email = modResViewModel
            .emailController.text;
        modResViewModel.newReservation?.clientInfo.phone = modResViewModel
            .phoneController.text;
        Result<PresentationModify> result = await resInteractor.updateRes(
          PresentationModifyBookRequest(
            resId: resID,
            carId: modResViewModel.newReservation?.details.car.id ?? "",
            clientInfo: modResViewModel.newReservation!.clientInfo,
            flightNumber: modResViewModel.newReservation?.flightNumber ?? "",
            extras: extras,
            comments: modResViewModel.newReservation?.comment ?? "",
          ),
        );
        if (result is Success<PresentationModify>) {
          profileViewModel.reservation = null;
          emit(const ModifyResState.modified());
        } else if (result is Error<PresentationModify>) {
          String error = result.errorCode;
          emit(ModifyResState.error(error: error));
        } else {
          emit(ModifyResState.error(error: LocaleKeys.res_mod_error.tr()));
        }
        modResViewModel.clearAll();
      } catch (e) {
        emit(ModifyResState.error(error: e.toString()));
      }
    });
  }
}
