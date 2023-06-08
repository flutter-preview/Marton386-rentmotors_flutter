part of 'search_org_bloc.dart';

@freezed
class SearchOrgEvent with _$SearchOrgEvent {
  const factory SearchOrgEvent.fetch() = SearchOrgEventFetch;
}