import 'domain_suggestion_data.dart';
import '../../../../data/models/responses/suggestion/data_suggestion.dart';
import '../../../../presentation/models/responses/suggestion/presentation_suggestion.dart';

class DomainSuggestion {
  final int id;
  final String value;
  final String unrestrictedValue;
  final DomainSuggestionData data;

  DomainSuggestion({
    required this.id,
    required this.value,
    required this.unrestrictedValue,
    required this.data,
  });

  factory DomainSuggestion.fromData(DataSuggestion data) {
    return DomainSuggestion(
      id: data.id ?? 1,
      value: data.value,
      unrestrictedValue: data.unrestricted_value,
      data: DomainSuggestionData.fromData(data.data),
    );
  }

  PresentationSuggestion toPress() {
    return PresentationSuggestion(
      id: id,
      value: value,
      unrestrictedValue: unrestrictedValue,
      data: data.toPress(),
    );
  }
}