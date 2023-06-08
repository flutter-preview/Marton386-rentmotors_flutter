import '../../utils/result.dart';
import 'package:rentmotors/presentation/models/requests/presentation_org_request.dart';
import 'package:rentmotors/presentation/models/responses/suggestion/presentation_suggestion.dart';

abstract class OrgInteractor {
  Future<Result<List<PresentationSuggestion>>> getOrg(PresentationOrgRequest orgRequest);
}