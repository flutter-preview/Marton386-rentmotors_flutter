import 'package:get_it/get_it.dart';
import '../models/responses/domain_client_info.dart';
import '../repository/book_repository.dart';
import '../models/responses/domain_book.dart';
import 'package:rentmotors/utils/result.dart';
import '../repository/check_client_repository.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';
import '../../presentation/interactors/book_interactor.dart';
import 'package:rentmotors/data/models/responses/book/data_book.dart';
import '../../data/models/responses/client_info/data_client_info.dart';
import 'package:rentmotors/domain/models/requests/domain_booking_request.dart';
import 'package:rentmotors/presentation/models/responses/presentation_book.dart';
import 'package:rentmotors/domain/models/requests/domain_booking_org_request.dart';
import 'package:rentmotors/presentation/models/responses/presentation_client_info.dart';
import 'package:rentmotors/presentation/models/requests/presentation_booking_request.dart';
import 'package:rentmotors/presentation/models/requests/presentation_booking_org_request.dart';

class BookInteractorImpl implements BookInteractor {
  var bookRepository = GetIt.instance<BookRepository>();
  var checkClientRepository = GetIt.instance<CheckClientRepository>();

  @override
  Future<Result<PresentationBook>> book(
      PresentationBookingRequest bookingRequest) async {
    DomainBookingRequest request =
        DomainBookingRequest.fromPress(bookingRequest);
    Result<DataBook> result = await bookRepository.book(request.toData());
    if (result is Success<DataBook>) {
      DomainBook data = DomainBook.fromData(result.data);
      return Success(data.toPress());
    } else if (result is Error<DataBook>) {
      String error = result.errorCode;
      return Error(error);
    } else {
      return Error(LocaleKeys.failure.tr());
    }
  }

  @override
  Future<Result<PresentationBook>> orgBook(
      PresentationBookingOrgRequest bookingOrgRequest) async {
    DomainBookingOrgRequest request =
        DomainBookingOrgRequest.fromPress(bookingOrgRequest);
    Result<DataBook> result = await bookRepository.orgBook(request.toData());
    if (result is Success<DataBook>) {
      DomainBook data = DomainBook.fromData(result.data);
      return Success(data.toPress());
    } else if (result is Error<DataBook>) {
      String error = result.errorCode;
      return Error(error);
    } else {
      return Error(LocaleKeys.failure.tr());
    }
  }

  @override
  Future<Result<PresentationClientInfo>> checkClient(
      String lastName, String email) async {
    Result<DataClientInfo> result =
        await checkClientRepository.checkClient(lastName, email);
    if (result is Success<DataClientInfo>) {
      DomainClientInfo data = DomainClientInfo.fromData(result.data);
      return Success(data.toPress());
    } else if (result is Error<DataClientInfo>) {
      String error = result.errorCode;
      return Error(error);
    } else {
      return Error(LocaleKeys.failure.tr());
    }
  }
}
