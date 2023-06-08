import '../../utils/result.dart';
import '../../data/models/responses/cancel_pay/data_cancel_pay.dart';
import '../../data/models/responses/check_pay_link/data_check_pay_link.dart';
import '../../data/models/responses/get_pay_response/data_get_pay_response.dart';

abstract class PaymentRepository {
  Future<Result<DataCheckPayLink>> checkPayLink(String reservationID,
      String email);
  Future<Result<DataGetPayResponse>> getPayLink(String reservationID,
      String email);
  Future<Result<DataCancelPay>> cancelOnlineLink(String reservationID);
}