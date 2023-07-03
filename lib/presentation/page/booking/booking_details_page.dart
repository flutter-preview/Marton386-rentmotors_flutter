import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../widgets/booking/car_info.dart';
import '../../widgets/next_button_widget.dart';
import '../../widgets/booking/dates_widget.dart';
import '../../viewModels/booking_view_model.dart';
import '../../widgets/booking/extras_layout.dart';
import '../../widgets/profile/my_fees_widget.dart';
import 'package:rentmotors/utils/alerts_shower.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';

class BookingDetailsPage extends StatefulWidget {
  const BookingDetailsPage({Key? key}) : super(key: key);

  @override
  State<BookingDetailsPage> createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  final BookingViewModel startBookViewModel =
      GetIt.instance<BookingViewModel>();
  String updater = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          centerTitle: true,
          title: Text(
            LocaleKeys.booking.tr(),
            style: Global.appBarText,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            CarInfoWidget(
              car: startBookViewModel.car!,
              countDays: startBookViewModel.getCountDays(),
            ),
            const SizedBox(height: 10),
            DatesWidget(
              startDateTime: startBookViewModel.startBookingDate,
              endDateTime: startBookViewModel.endBookingDate,
              startLocation: startBookViewModel.startStation?.name ?? "",
              endLocation: startBookViewModel.endStation?.name ?? "",
            ),
            const SizedBox(height: 10),
            ExtrasWidget(
              extrasNumber: 1,
              updater: () {
                setState(() {
                  updater = "";
                });
              },
            ),
            if(startBookViewModel.car?.fees.isNotEmpty ?? false)
              const SizedBox(height: 10),
            if(startBookViewModel.car?.fees.isNotEmpty ?? false)
              MyFeesWidget(
                fees: startBookViewModel.car?.fees ?? [],
              ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleKeys.total.tr(),
                  style: Global.bigHeaderText,
                ),
                Text(
                  "${startBookViewModel.getFullSum()} ${startBookViewModel.car
                      ?.extras[0].currency}",
                  style: Global.priceStyleText,
                ),
              ],
            ),
            const SizedBox(height: 10),
            NextButtonWidget(
              text: LocaleKeys.continue_booking.tr(),
              nextAct: () {
                if (startBookViewModel.checkerAddress()) {
                  Navigator.pushNamed(
                    context,
                    "mainPage/searchCars/chooseExtras/regularBook",
                  );
                } else {
                  AlertsShower.showAlert(context, "${LocaleKeys.enter_address.tr()}!");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
