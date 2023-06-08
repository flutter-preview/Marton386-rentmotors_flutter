import 'dart:io';
import '../../utils/result.dart';

abstract class VoucherInteractor {
  Future<Result<File>> loadVoucher(String numReservation, String email);
  Future<Result<File>> loadPdfVoucher(String numReservation, String email);
}