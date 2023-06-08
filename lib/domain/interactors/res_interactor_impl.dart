import 'package:get_it/get_it.dart';
import '../repository/res_repository.dart';
import 'package:rentmotors/utils/result.dart';
import '../models/responses/domain_modify.dart';
import '../../res/generated/locale_keys.g.dart';
import '../models/responses/domain_cancel.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../presentation/interactors/res_interactor.dart';
import '../../data/models/responses/modify/data_modify.dart';
import '../../data/models/responses/cancel/data_cancel.dart';
import '../models/responses/domain_reservation_response.dart';
import 'package:rentmotors/domain/models/requests/domain_modify_book_request.dart';
import 'package:rentmotors/presentation/models/responses/presentation_cancel.dart';
import 'package:rentmotors/presentation/models/responses/presentation_modify.dart';
import '../../data/models/responses/reservation_response/data_reservation_response.dart';
import 'package:rentmotors/presentation/models/requests/presentation_modify_book_request.dart';
import 'package:rentmotors/presentation/models/responses/presentation_reservation_response.dart';

class ResInteractorImpl implements ResInteractor {
  var resRepository = GetIt.instance<ResRepository>();

  @override
  Future<Result<PresentationReservationResponse>> getReservation(
      String resId, String email) async {
    Result<DataReservationResponse> result = await resRepository
        .getReservation(resId, email);
    if (result is Success<DataReservationResponse>) {
      DomainReservationResponse data = DomainReservationResponse.fromData(
          result.data);
      return Success(data.toPress());
    } else if (result is Error<DataReservationResponse>) {
      String error = result.errorCode;
      return Error(error);
    } else {
      return Error(LocaleKeys.failure.tr());
    }
  }

  @override
  Future<Result<PresentationCancel>> getCancel(
      String resId, String email) async {
    Result<DataCancel> result = await resRepository.getCancel(resId, email);
    if (result is Success<DataCancel>) {
      DomainCancel data = DomainCancel.fromData(result.data);
      return Success(data.toPress());
    } else if (result is Error<DataCancel>) {
      String error = result.errorCode;
      return Error(error);
    } else {
      return Error(LocaleKeys.failure.tr());
    }
  }

  @override
  Future<Result<PresentationModify>> updateRes(
      PresentationModifyBookRequest modifyBookRequest) async {
    DomainModifyBookRequest request = DomainModifyBookRequest.fromPress(
        modifyBookRequest);
    Result<DataModify> result = await resRepository.updateRes(request.toData());
    if (result is Success<DataModify>) {
      DomainModify data = DomainModify.fromData(result.data);
      return Success(data.toPress());
    } else if (result is Error<DataModify>) {
      String error = result.errorCode;
      return Error(error);
    } else {
      return Error(LocaleKeys.failure.tr());
    }
  }
}