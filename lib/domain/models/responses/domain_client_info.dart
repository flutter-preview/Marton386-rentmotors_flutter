import '../../../data/models/responses/client_info/data_client_info.dart';
import '../../../presentation/models/responses/presentation_client_info.dart';

class DomainClientInfo {
  final int customerId;

  DomainClientInfo({
    required this.customerId,
  });

  factory DomainClientInfo.fromPress(PresentationClientInfo press) {
    return DomainClientInfo(customerId: press.customerId);
  }

  factory DomainClientInfo.fromData(DataClientInfo data) {
    return DomainClientInfo(customerId: data.customer_id);
  }

  DataClientInfo toData() {
    return DataClientInfo(customer_id: customerId);
  }

  PresentationClientInfo toPress() {
    return PresentationClientInfo(customerId: customerId);
  }
}
