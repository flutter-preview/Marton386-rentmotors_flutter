import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import 'package:rentmotors/utils/result.dart';
import '../../domain/repository/check_client_repository.dart';
import 'package:rentmotors/data/models/responses/client_info/data_client_info.dart';

class CheckClientRepositoryImpl implements CheckClientRepository {
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  Future<Result<DataClientInfo>> checkClient(
      String lastName, String email) async {
    return await networkStore.checkClient(lastName, email);
  }
}
