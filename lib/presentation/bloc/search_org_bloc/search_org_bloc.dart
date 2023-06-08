import '../../../utils/result.dart';
import 'package:get_it/get_it.dart';
import '../../viewModels/org_view_model.dart';
import '../../interactors/org_interactor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../res/generated/locale_keys.g.dart';
import '../../viewModels/booking_view_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/requests/presentation_org_request.dart';
import '../../models/responses/suggestion/presentation_suggestion.dart';

part 'search_org_bloc.freezed.dart';
part 'search_org_event.dart';
part 'search_org_state.dart';

class SearchOrgBloc extends Bloc<SearchOrgEvent, SearchOrgState> {
  var orgInteractor = GetIt.instance<OrgInteractor>();
  final BookingViewModel startBookViewModel =
  GetIt.instance<BookingViewModel>();
  final OrgViewModel orgViewModel = GetIt.instance<OrgViewModel>();

  SearchOrgBloc() : super(const SearchOrgState.loaded()) {
    on<SearchOrgEventFetch>((event, emit) async {
      emit(const SearchOrgState.loading());
      try {
        Result<List<PresentationSuggestion>> result = await orgInteractor
            .getOrg(PresentationOrgRequest(query: startBookViewModel
            .organizationController.text));
        if (result is Success<List<PresentationSuggestion>>) {
          orgViewModel.setOrganizations(result.data);
          emit(const SearchOrgState.loaded());
        } else if (result is Error<List<PresentationSuggestion>>) {
          emit(SearchOrgState.error(error: result.errorCode));
        }
      } catch (e) {
        emit(SearchOrgState.error(error: LocaleKeys.failure.tr()));
      }
    });
  }
}