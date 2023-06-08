import 'dart:io';
import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import 'package:rentmotors/utils/result.dart';
import '../../domain/repository/voucher_repository.dart';

class VoucherRepositoryImpl implements VoucherRepository {
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  Future<Result<File>> loadVoucher(String numReservation, String email) async {
    return networkStore.loadVoucher(numReservation, email);
  }

  @override
  Future<Result<File>> loadPdfVoucher(
      String numReservation, String email) async {
    return networkStore.loadPdfVoucher(numReservation, email);
  }
}
