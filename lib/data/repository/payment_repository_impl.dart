import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import 'package:rentmotors/utils/result.dart';
import '../../domain/repository/payment_repository.dart';
import 'package:rentmotors/data/models/responses/cancel_pay/data_cancel_pay.dart';
import 'package:rentmotors/data/models/responses/check_pay_link/data_check_pay_link.dart';
import 'package:rentmotors/data/models/responses/get_pay_response/data_get_pay_response.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  Future<Result<DataCheckPayLink>> checkPayLink(String reservationID,
      String email) async {
    return await networkStore.checkPayLink(reservationID, email);
  }

  @override
  Future<Result<DataGetPayResponse>> getPayLink(String reservationID,
      String email) async {
    return await networkStore.getPayLink(reservationID, email);
  }

  @override
  Future<Result<DataCancelPay>> cancelOnlineLink(String reservationID) async {
    return await networkStore.cancelOnlineLink(reservationID);
  }
}