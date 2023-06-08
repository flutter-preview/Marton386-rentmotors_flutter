import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import 'package:rentmotors/utils/result.dart';
import '../../domain/repository/book_repository.dart';
import 'package:rentmotors/data/models/responses/book/data_book.dart';
import 'package:rentmotors/data/models/requests/booking_request/data_booking_request.dart';
import 'package:rentmotors/data/models/requests/booking_org_request/data_booking_org_request.dart';

class BookRepositoryImpl implements BookRepository {
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  Future<Result<DataBook>> book(DataBookingRequest bookingRequest) async {
    return await networkStore.book(bookingRequest);
  }

  @override
  Future<Result<DataBook>> orgBook(DataBookingOrgRequest bookingOrgRequest) async {
    return await networkStore.orgBook(bookingOrgRequest);
  }
}