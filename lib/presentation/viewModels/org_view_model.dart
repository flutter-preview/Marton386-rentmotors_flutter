import '../models/responses/suggestion/presentation_suggestion.dart';

class OrgViewModel {
  List<PresentationSuggestion> list = [];

  void setOrganizations(List<PresentationSuggestion> newList) {
    list = newList;
  }
}