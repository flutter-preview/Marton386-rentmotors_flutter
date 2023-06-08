import 'dart:io';
import 'package:get_it/get_it.dart';
import 'package:rentmotors/utils/result.dart';
import '../../presentation/interactors/voucher_interactor.dart';
import 'package:rentmotors/domain/repository/voucher_repository.dart';

class VoucherInteractorImpl implements VoucherInteractor {
  var voucherRepository = GetIt.instance<VoucherRepository>();

  @override
  Future<Result<File>> loadPdfVoucher(String numReservation, String email) async {
    return await voucherRepository.loadVoucher(numReservation, email);
  }

  @override
  Future<Result<File>> loadVoucher(String numReservation, String email) async {
    return await voucherRepository.loadPdfVoucher(numReservation, email);
  }
}