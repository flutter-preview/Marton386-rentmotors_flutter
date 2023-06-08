import '../../utils/result.dart';
import '../../data/models/responses/modify/data_modify.dart';
import '../../data/models/responses/cancel/data_cancel.dart';
import '../../data/models/requests/modify_book_request/data_modify_book_request.dart';
import '../../data/models/responses/reservation_response/data_reservation_response.dart';

abstract class ResRepository {
  // ignore: non_constant_identifier_names
  Future<Result<DataReservationResponse>> getReservation(String res_id,
      String email);
  // ignore: non_constant_identifier_names
  Future<Result<DataCancel>> getCancel(String res_id, String email);
  Future<Result<DataModify>> updateRes(DataModifyBookRequest modifyBookRequest);
}