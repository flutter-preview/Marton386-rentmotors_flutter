import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../../utils/alerts_shower.dart';
import '../../../utils/date_formatter.dart';
import '../../widgets/search_text_field.dart';
import '../../widgets/next_button_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../res/generated/locale_keys.g.dart';
import '../../widgets/booking/date_time_widget.dart';
import '../../viewModels/booking_view_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/presentation/page/booking/search_station.dart';

class StartBookingPage extends StatefulWidget {
  const StartBookingPage({super.key});

  @override
  State<StartBookingPage> createState() => _StartBookingPageState();
}

class _StartBookingPageState extends State<StartBookingPage> {
  final BookingViewModel startBookViewModel =
  GetIt.instance<BookingViewModel>();
  String pickupDate = "";
  String dropoffDate = "";

  @override
  void initState() {
    pickupDate = startBookViewModel.startBookingDate;
    dropoffDate = startBookViewModel.endBookingDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'assets/pictures/logo.png',
            width: Global.logoWith,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      LocaleKeys.car_pickup_location.tr(),
                      style: Global.searchText,
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchStation(
                              controller: startBookViewModel
                                  .tvPickUpLocationController,
                              hint: LocaleKeys.enter_city_name.tr(),
                              searchSmg: () {
                                setState(() {
                                  startBookViewModel
                                      .updateFilteredStartStations();
                                });
                              },
                              showList: true,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                            color: Global.getBorderColor(context),
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: SearchTextField(
                          enabled: false,
                          showIcon: true,
                          hintText: LocaleKeys.enter_city_name.tr(),
                          controller: startBookViewModel
                              .tvPickUpLocationController,
                        ),
                      ),
                    ),
                    AnimatedCrossFade(
                      duration: const Duration(milliseconds: 200),
                      crossFadeState: startBookViewModel.sameLocationDropOff ?
                      CrossFadeState.showFirst :
                      CrossFadeState.showSecond,
                      firstChild: Container(),
                      secondChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 16),
                          Text(
                            LocaleKeys.car_dropOff_location.tr(),
                            style: Global.searchText,
                          ),
                          const SizedBox(height: 8),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchStation(
                                    controller: startBookViewModel
                                        .tvDropOffLocationController,
                                    hint: LocaleKeys.enter_city_name.tr(),
                                    searchSmg: () {
                                      setState(() {
                                        startBookViewModel
                                            .updateFilteredEndStations();
                                      });
                                    },
                                    showList: false,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2.0,
                                  color: Global.getBorderColor(context),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: SearchTextField(
                                enabled: false,
                                showIcon: true,
                                hintText: LocaleKeys.enter_city_name.tr(),
                                controller: startBookViewModel
                                    .tvDropOffLocationController,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SwitchListTile(
                      contentPadding: const EdgeInsets.only(
                          left: 0, right: 0, top: 0, bottom: 0),
                      value: startBookViewModel.sameLocationDropOff,
                      onChanged: (value) => setState(() {
                        startBookViewModel.changeSameLocation(value);
                      }),
                      title: Text(
                        LocaleKeys.return_in_the_same_place.tr(),
                        style: Global.switchText,
                      ),
                      activeColor: Global.darkGreen,
                      activeTrackColor: Global.green,
                      inactiveThumbColor: Global.grayExtraLight,
                      inactiveTrackColor: Global.grayLight,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      LocaleKeys.pickup_date.tr(),
                      style: Global.searchText,
                    ),
                    const SizedBox(height: 8),
                    DateTimeWidget(
                      dateTime: startBookViewModel.startBookingDate,
                      onDatePress: (str) {
                        updateAllPickup(str);
                      },
                      onTimePress: (str) {
                        updateAllPickup(str);
                      },
                      context: context,
                    ),
                    const SizedBox(height: 5),
                    SvgPicture.asset(
                      'assets/pictures/GreenArrow.svg',
                      height: 40,
                      width: 40,
                    ),
                    Text(
                      LocaleKeys.dropOff_date.tr(),
                      style: Global.searchText,
                    ),
                    const SizedBox(height: 8),
                    DateTimeWidget(
                      dateTime: startBookViewModel.endBookingDate,
                      onDatePress: (str) {
                        updateAllDropoff(str);
                      },
                      onTimePress: (str) {
                        updateAllDropoff(str);
                      },
                      context: context,
                    ),
                  ],
                ),
              ),
            ),
            NextButtonWidget(
              text: LocaleKeys.next.tr(),
              nextAct: () {
                if (startBookViewModel.checkStartButton()) {
                  Navigator.pushNamed(context, "mainPage/searchCars");
                } else {
                  AlertsShower.showAlert(
                    context,
                    LocaleKeys.choose_station.tr(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void updateAllPickup(String str) {
    if (DateFormatter.compareStringDates(
        str, DateFormatter.strFromDate(DateTime.now())) !=
        -1) {
      if (DateFormatter.compareStringDates(str, dropoffDate) != -1) {
        //меняем dropoffDate
        DateTime newDrop = DateFormatter.getDateTime(str);
        DateTime newDateTime = newDrop.add(const Duration(hours: 1));
        String newDropoffDate = DateFormatter.strFromDate(newDateTime);
        setState(() {
          startBookViewModel.endBookingDate = newDropoffDate;
        });
        updateDropoffDate(newDropoffDate);
      }
      setState(() {
        startBookViewModel.startBookingDate = str;
      });
      updatePickupDate(str);
    } else {
      AlertsShower.showAlert(context, LocaleKeys.date_too_early.tr());
    }
  }

  void updatePickupDate(String newPickupDate) {
    setState(() {
      pickupDate = newPickupDate;
    });
  }

  void updateAllDropoff(String str) {
    if ((DateFormatter.compareStringDates(str, DateFormatter.strFromDate(
        DateTime.now())) == 1) && (DateFormatter.compareStringDates(str,
        pickupDate) == 1)) {
      setState(() {
        startBookViewModel.endBookingDate = str;
      });
      updateDropoffDate(str);
    } else {
      AlertsShower.showAlert(context, LocaleKeys.date_too_early.tr());
    }
  }

  void updateDropoffDate(String newDropoffDate) {
    setState(() {
      dropoffDate = newDropoffDate;
    });
  }
}