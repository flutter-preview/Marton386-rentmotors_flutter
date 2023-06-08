import '../../../data/models/responses/cancel/data_cancel.dart';
import '../../../presentation/models/responses/presentation_cancel.dart';

class DomainCancel {
  final String resId;
  final String supplierResId;
  final int status;
  final int cancelationFee;

  DomainCancel({
    required this.resId,
    required this.supplierResId,
    required this.status,
    required this.cancelationFee,
  });

  factory DomainCancel.fromData(DataCancel data) {
    return DomainCancel(
      resId: data.res_id,
      supplierResId: data.supplier_res_id,
      status: data.status,
      cancelationFee: data.cancelation_fee,
    );
  }

  PresentationCancel toPress() {
    return PresentationCancel(
      resId: resId,
      supplierResId: supplierResId,
      status: status,
      cancelationFee: cancelationFee,
    );
  }
}
