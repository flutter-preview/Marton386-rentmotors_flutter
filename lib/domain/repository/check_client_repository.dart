import '../../utils/result.dart';
import '../../data/models/responses/client_info/data_client_info.dart';

abstract class CheckClientRepository {
  Future<Result<DataClientInfo>> checkClient(String lastName, String email);
}