import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../../utils/alerts_shower.dart';
import '../../widgets/booking/car_item.dart';
import '../../widgets/search_text_field.dart';
import '../../widgets/next_button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../viewModels/profile_view_model.dart';
import '../../widgets/booking/extras_layout.dart';
import '../../../res/generated/locale_keys.g.dart';
import '../../viewModels/search_car_view_model.dart';
import '../../viewModels/modify_res_view_model.dart';
import '../../widgets/booking/date_time_widget.dart';
import 'package:rentmotors/utils/date_formatter.dart';
import '../../bloc/modify_res_bloc/modify_res_bloc.dart';
import '../../bloc/search_car_bloc/search_car_bloc.dart';
import '../../models/responses/car/presentation_car.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/presentation/page/profile/search_cars_page.dart';

class ModifyResPage extends StatefulWidget {
  const ModifyResPage({Key? key}) : super(key: key);

  @override
  State<ModifyResPage> createState() => _ModifyResPageState();
}

class _ModifyResPageState extends State<ModifyResPage> {
  final ProfileViewModel profileViewModel = GetIt.instance<ProfileViewModel>();
  final SearchCarViewModel searchCarViewModel = GetIt.instance<SearchCarViewModel>();
  final ModifyResViewModel modifyViewModel =
      GetIt.instance<ModifyResViewModel>();
  String pickupDate = "";
  String dropoffDate = "";

  @override
  void initState() {
    pickupDate =
        modifyViewModel.newReservation?.details.pickupDate ?? '202301011200';
    dropoffDate =
        modifyViewModel.newReservation?.details.dropoffDate ?? '202301011200';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    searchCarViewModel.clear();
    final stateProfile = context.watch<ModifyResBloc>().state;
    return stateProfile.when(
      unmodified: () {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              centerTitle: true,
              title: Text(
                "${LocaleKeys.change_res.tr()} ${profileViewModel.reservation?.resId}",
                style: Global.switchText,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    LocaleKeys.pickup_date.tr(),
                    style: Global.searchText,
                  ),
                  const SizedBox(height: 8),
                  DateTimeWidget(
                    dateTime: pickupDate,
                    context: context,
                    onDatePress: (str) {
                      updateAllPickup(str);
                    },
                    onTimePress: (str) {
                      updateAllPickup(str);
                    },
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
                    dateTime: dropoffDate,
                    context: context,
                    onDatePress: (str) {
                      updateAllDropoff(str);
                    },
                    onTimePress: (str) {
                      updateAllDropoff(str);
                    },
                  ),
                  const SizedBox(height: 15),
                  Text(
                    LocaleKeys.car_class.tr(),
                    style: Global.searchText,
                  ),
                  const SizedBox(height: 8),
                  (!modifyViewModel.mastChangeCar) ?
                  CarItem(car: modifyViewModel.newReservation!.details.car) :
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        size: 80,
                        Icons.report_gmailerrorred_rounded,
                        color: Global.darkRed,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        LocaleKeys.choose_car.tr(),
                        style: Global.changeCarText,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  NextButtonWidget(
                    text: LocaleKeys.change.tr(),
                    nextAct: () {
                      searchCarViewModel.datePickUp = pickupDate;
                      searchCarViewModel.dateDropOff = dropoffDate;
                      searchCarViewModel.stationPickUp = modifyViewModel
                          .newReservation!.details.pickup.id;
                      searchCarViewModel.stationDropOff = modifyViewModel
                          .newReservation!.details.dropoff.id;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (context) => SearchCarBloc(),
                            child: SearchCarsPage(
                              nextAct: (PresentationCar value) {
                                setState(() {
                                  value.extras = modifyViewModel.newReservation?.details.car.extras ?? [];
                                  modifyViewModel.newReservation?.details.car = value;
                                  modifyViewModel.mastChangeCar = false;
                                });
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  const ExtrasWidget(extrasNumber: 2),
                  const SizedBox(height: 15),
                  Text(
                    LocaleKeys.email_p.tr(),
                    style: Global.searchText,
                  ),
                  const SizedBox(height: 8),
                  SearchTextField(
                    type: TextInputType.emailAddress,
                    showIcon: false,
                    hintText: LocaleKeys.email.tr(),
                    controller: modifyViewModel.emailController,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    LocaleKeys.phone_p.tr(),
                    style: Global.searchText,
                  ),
                  const SizedBox(height: 8),
                  SearchTextField(
                    type: TextInputType.phone,
                    showIcon: false,
                    hintText: LocaleKeys.phone.tr(),
                    controller: modifyViewModel.phoneController,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    LocaleKeys.flight_number.tr(),
                    style: Global.searchText,
                  ),
                  const SizedBox(height: 8),
                  SearchTextField(
                    showIcon: false,
                    hintText: LocaleKeys.flight_number.tr(),
                    controller: modifyViewModel.flightNumberController,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    LocaleKeys.special_wishes.tr(),
                    style: Global.searchText,
                  ),
                  const SizedBox(height: 8),
                  SearchTextField(
                    showIcon: false,
                    hintText: LocaleKeys.special_wishes.tr(),
                    controller: modifyViewModel.commentController,
                  ),
                  const SizedBox(height: 15),
                  NextButtonWidget(
                    text: LocaleKeys.save_changes.tr(),
                    nextAct: () {
                      context.read<ModifyResBloc>().add(const ModifyResEvent
                          .fetch());
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
      loading: () {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              centerTitle: true,
              title: Text(
                "${LocaleKeys.your_booking.tr()} ${profileViewModel.reservation?.resId}",
                style: Global.switchText,
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
      modified: () {
        Future.delayed(Duration.zero, () => Navigator.pop(context));
        Future.delayed(Duration.zero, () => Navigator.pop(context));
        Future.delayed(Duration.zero, () => AlertsShower.showMessage(
          context,
          LocaleKeys.change_res.tr(),
          LocaleKeys.res_was_mod.tr(),
        ));
        return Container();
      },
      error: (String error) {
        Future.delayed(Duration.zero, () => Navigator.pop(context));
        Future.delayed(Duration.zero, () => Navigator.pop(context));
        Future.delayed(Duration.zero, () => AlertsShower.showAlert(
          context,
          LocaleKeys.res_mod_error.tr(),
        ));
        return Container();
      },
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
          modifyViewModel.newReservation?.details.dropoffDate = newDropoffDate;
        });
        updateDropoffDate(newDropoffDate);
      }
      if (DateFormatter.compareStringDates(str, pickupDate) != 0) {
        setState(() {
          modifyViewModel.mastChangeCar = true;
        });
        if ((DateFormatter.compareStringDates(str, profileViewModel
            .reservation!.details.pickupDate) == 0) && (profileViewModel
            .reservation!.details.car.id == modifyViewModel.newReservation
        !.details.car.id)) {
          setState(() {
            modifyViewModel.mastChangeCar = false;
          });
        }
      }
      setState(() {
        modifyViewModel.newReservation?.details.pickupDate = str;
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
    if ((DateFormatter.compareStringDates(
                str, DateFormatter.strFromDate(DateTime.now())) ==
            1) &&
        (DateFormatter.compareStringDates(str, pickupDate) == 1)) {
      if (DateFormatter.compareStringDates(str, dropoffDate) != 0) {
        setState(() {
          modifyViewModel.mastChangeCar = true;
        });
      }
      setState(() {
        modifyViewModel.newReservation?.details.dropoffDate = str;
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