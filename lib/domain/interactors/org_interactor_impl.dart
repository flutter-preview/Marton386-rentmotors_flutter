import 'package:get_it/get_it.dart';
import '../repository/org_repository.dart';
import 'package:rentmotors/utils/result.dart';
import '../../res/generated/locale_keys.g.dart';
import '../models/requests/domain_org_request.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../presentation/interactors/org_interactor.dart';
import '../../data/models/responses/dadata/data_dadata.dart';
import '../models/responses/suggestion/domain_suggestion.dart';
import 'package:rentmotors/presentation/models/requests/presentation_org_request.dart';
import 'package:rentmotors/presentation/models/responses/suggestion/presentation_suggestion.dart';

class OrgInteractorImpl implements OrgInteractor {
  var orgRepository = GetIt.instance<OrgRepository>();

  @override
  Future<Result<List<PresentationSuggestion>>> getOrg(
      PresentationOrgRequest orgRequest) async {
    DomainOrgRequest request = DomainOrgRequest.fromPress(orgRequest);
    Result<DataDadata> result = await orgRepository.getOrg(request.toData());
    if (result is Success<DataDadata>) {
      List<DomainSuggestion> data = result.data.suggestions
          .map((elem) => DomainSuggestion.fromData(elem)).toList();
      List<PresentationSuggestion> pressData = data
          .map((elem) => elem.toPress()).toList();
      return Success(pressData);
    } else if (result is Error<DataDadata>) {
      String error = result.errorCode;
      return Error(error);
    } else {
      return Error(LocaleKeys.failure.tr());
    }
  }
}