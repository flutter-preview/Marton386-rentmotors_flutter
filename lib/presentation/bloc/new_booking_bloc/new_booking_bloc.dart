import '../../../utils/result.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../interactors/book_interactor.dart';
import '../../viewModels/booking_view_model.dart';
import '../../models/responses/presentation_book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/requests/presentation_booking_request.dart';
import '../../models/requests/presentation_booking_org_request.dart';

part 'new_booking_bloc.freezed.dart';
part 'new_booking_event.dart';
part 'new_booking_state.dart';

class NewBookingBloc extends Bloc<NewBookingEvent, NewBookingState>{
  final BookingViewModel bookViewModel = GetIt
      .instance<BookingViewModel>();
  final BookInteractor bookInteractor = GetIt.instance<BookInteractor>();

  NewBookingBloc() : super(const NewBookingState.loaded()) {
    on<NewBookingEventFetch>((event, emit) async {
      emit(const NewBookingState.loading());
      try {
        if (bookViewModel.organization == null) {
          PresentationBookingRequest request = bookViewModel
              .getNewBookRequest();
          Result<PresentationBook> result = await bookInteractor
              .book(request);
          if (result is Success<PresentationBook>) {
            bookViewModel.bookResult = result.data;
            emit(const NewBookingState.loaded());
          } else if(result is Error<PresentationBook>) {
            emit(NewBookingState.error(error: result.errorCode));
          }
        } else {
          PresentationBookingOrgRequest request = bookViewModel
              .getNewBookOrgRequest();
          Result<PresentationBook> result = await bookInteractor
              .orgBook(request);
          if (result is Success<PresentationBook>) {
            bookViewModel.bookResult = result.data;
            emit(const NewBookingState.loaded());
          } else if(result is Error<PresentationBook>) {
            emit(NewBookingState.error(error: result.errorCode));
          }
        }
      } catch (e) {
        emit(NewBookingState.error(error: e.toString()));
      }
    });
  }
}