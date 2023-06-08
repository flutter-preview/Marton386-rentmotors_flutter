import '../../../data/models/requests/org_request/data_org_request.dart';
import '../../../presentation/models/requests/presentation_org_request.dart';

class DomainOrgRequest {
  final String query;

  DomainOrgRequest({
    required this.query,
  });

  factory DomainOrgRequest.fromPress(PresentationOrgRequest press) {
    return DomainOrgRequest(query: press.query);
  }

  DataOrgRequest toData() {
    return DataOrgRequest(query: query);
  }
}