import 'package:rentmotors/presentation/models/responses/suggestion/suggestion_data.dart';

class PresentationSuggestion {
  final int id;
  final String value;
  final String unrestrictedValue;
  final SuggestionData data;

  PresentationSuggestion({
    required this.id,
    required this.value,
    required this.unrestrictedValue,
    required this.data,
  });
}