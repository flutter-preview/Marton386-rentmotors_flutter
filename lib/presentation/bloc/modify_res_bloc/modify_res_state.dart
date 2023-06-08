part of 'modify_res_bloc.dart';

@freezed
class ModifyResState with _$ModifyResState {
  const factory ModifyResState.unmodified() = ModifyResStateUnmodified;
  const factory ModifyResState.loading() = ModifyResStateLoading;
  const factory ModifyResState.modified() = ModifyResStateModified;
  const factory ModifyResState.error({required String error}) = ModifyResStateError;
}