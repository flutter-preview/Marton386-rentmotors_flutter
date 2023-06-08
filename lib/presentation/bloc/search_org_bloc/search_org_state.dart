part of 'search_org_bloc.dart';

@freezed
class SearchOrgState with _$SearchOrgState {
  const factory SearchOrgState.loading() = SearchOrgStateLoading;
  const factory SearchOrgState.loaded() = SearchOrgStateLoaded;
  const factory SearchOrgState.error({required String error}) = SearchOrgStateError;
}