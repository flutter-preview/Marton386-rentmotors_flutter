import '../../utils/result.dart';
import '../../data/models/responses/dadata/data_dadata.dart';
import '../../data/models/requests/org_request/data_org_request.dart';

abstract class OrgRepository {
  Future<Result<DataDadata>> getOrg(DataOrgRequest orgRequest);
}