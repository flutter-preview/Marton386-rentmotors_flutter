import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../../utils/date_formatter.dart';
import '../../widgets/booking/car_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../res/generated/locale_keys.g.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../viewModels/booking_view_model.dart';
import '../../bloc/search_car_bloc/search_car_bloc.dart';
import '../../models/responses/car/presentation_car.dart';
import 'package:easy_localization/easy_localization.dart';

class BookingSearchCarPage extends StatefulWidget {
  const BookingSearchCarPage({Key? key}) : super(key: key);

  @override
  State<BookingSearchCarPage> createState() => _BookingSearchCarPageState();
}

class _BookingSearchCarPageState extends State<BookingSearchCarPage> {
  final BookingViewModel startBookViewModel =
  GetIt.instance<BookingViewModel>();
  final RefreshController refreshController = RefreshController();

  @override
  void initState() {
    startBookViewModel.searchForBooking = true;
    context.read<SearchCarBloc>().add(const SearchCarEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final stateCar = context.watch<SearchCarBloc>().state;
    return stateCar.when(
      loaded: () {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              centerTitle: true,
              title: Column(
                children: [
                  Text(
                    startBookViewModel.startStation?.name ?? "",
                    style: Global.littleAppBarText,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${DateFormatter.getRightFormat(
                        startBookViewModel.startBookingDate
                    )} - ${DateFormatter.getRightFormat(
                        startBookViewModel.endBookingDate
                    )}",
                    style: Global.littleAppBarText,
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: customRefresher(startBookViewModel.searchCars?.cars ?? []),
          ),
        );
      },
      loading: () {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              centerTitle: true,
              title: Column(
                children: [
                  Text(
                    startBookViewModel.startStation?.name ?? "",
                    style: Global.littleAppBarText,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${DateFormatter.getRightFormat(
                        startBookViewModel.startBookingDate
                    )} - ${DateFormatter.getRightFormat(
                        startBookViewModel.endBookingDate
                    )}",
                    style: Global.littleAppBarText,
                  ),
                ],
              ),
            ),
          ),
          body: const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Global.darkGreen,
            ),
          ),
        );
      },
      nothingFound: () {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              centerTitle: true,
              title: Column(
                children: [
                  Text(
                    startBookViewModel.startStation?.name ?? "",
                    style: Global.littleAppBarText,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${DateFormatter.getRightFormat(
                        startBookViewModel.startBookingDate
                    )} - ${DateFormatter.getRightFormat(
                        startBookViewModel.endBookingDate
                    )}",
                    style: Global.littleAppBarText,
                  ),
                ],
              ),
            ),
          ),
          body: Center(
            child: Text(
              LocaleKeys.no_available_cars.tr(),
              style: Global.headerText,
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }

  Widget customRefresher(List<PresentationCar> currentList) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: false,
      enablePullDown: false,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              startBookViewModel.car = currentList[index];
              Navigator.pushNamed(context, "mainPage/searchCars/chooseExtras");
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 3.0,
              ),
              child: CarItem(car: currentList[index]),
            ),
          );
        },
        separatorBuilder: (_, int index) => const SizedBox(height: 5),
        itemCount: currentList.length,
      ),
    );
  }
}
