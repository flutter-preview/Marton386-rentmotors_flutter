import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import 'package:rentmotors/utils/result.dart';
import '../../domain/repository/res_repository.dart';
import 'package:rentmotors/data/models/responses/cancel/data_cancel.dart';
import 'package:rentmotors/data/models/responses/modify/data_modify.dart';
import 'package:rentmotors/data/models/requests/modify_book_request/data_modify_book_request.dart';
import 'package:rentmotors/data/models/responses/reservation_response/data_reservation_response.dart';

class ResRepositoryImpl implements ResRepository {
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  // ignore: non_constant_identifier_names
  Future<Result<DataReservationResponse>> getReservation(String res_id,
      String email) async {
    return await networkStore.getReservation(res_id, email);
  }

  @override
  // ignore: non_constant_identifier_names
  Future<Result<DataCancel>> getCancel(String res_id, String email) async {
    return await networkStore.getCancel(res_id, email);
  }

  @override
  Future<Result<DataModify>> updateRes(
      DataModifyBookRequest modifyBookRequest) async {
    return await networkStore.updateRes(modifyBookRequest);
  }
}
