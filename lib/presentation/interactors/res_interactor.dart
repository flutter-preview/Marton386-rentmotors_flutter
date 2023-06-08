import '../../utils/result.dart';
import '../models/responses/presentation_cancel.dart';
import '../models/responses/presentation_modify.dart';
import '../models/requests/presentation_modify_book_request.dart';
import 'package:rentmotors/presentation/models/responses/presentation_reservation_response.dart';

abstract class ResInteractor {
  Future<Result<PresentationReservationResponse>> getReservation(String resId,
      String email);
  Future<Result<PresentationCancel>> getCancel(String resId, String email);
  Future<Result<PresentationModify>> updateRes(
      PresentationModifyBookRequest modifyBookRequest);
}