import '../../../data/models/responses/modify/data_modify.dart';
import '../../../presentation/models/responses/presentation_modify.dart';

class DomainModify {
  final String resId;
  final int supplierResId;
  final int version;
  final int status;

  DomainModify({
    required this.resId,
    required this.supplierResId,
    required this.version,
    required this.status,
  });

  factory DomainModify.fromData(DataModify data) {
    return DomainModify(
      resId: data.res_id,
      supplierResId: data.supplier_res_id,
      version: data.version,
      status: data.status,
    );
  }

  PresentationModify toPress() {
    return PresentationModify(
      resId: resId,
      supplierResId: supplierResId,
      version: version,
      status: status,
    );
  }
}
