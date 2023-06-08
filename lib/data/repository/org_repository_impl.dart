import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import 'package:rentmotors/utils/result.dart';
import '../../domain/repository/org_repository.dart';
import 'package:rentmotors/data/models/responses/dadata/data_dadata.dart';
import 'package:rentmotors/data/models/requests/org_request/data_org_request.dart';

class OrgRepositoryImpl implements OrgRepository {
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  Future<Result<DataDadata>> getOrg(DataOrgRequest orgRequest) async {
    return await networkStore.getOrg(orgRequest);
  }
}