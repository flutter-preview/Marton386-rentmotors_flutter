import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../../utils/alerts_shower.dart';
import '../../../utils/date_formatter.dart';
import '../../widgets/booking/car_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../viewModels/profile_view_model.dart';
import '../../widgets/profile/my_fees_widget.dart';
import '../../../res/generated/locale_keys.g.dart';
import '../../viewModels/modify_res_view_model.dart';
import '../../widgets/profile/my_extras_widget.dart';
import '../../widgets/profile/my_payment_widget.dart';
import '../../widgets/profile/my_add_info_widget.dart';
import '../../widgets/profile/my_date_time_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../widgets/profile/my_reservation_bottom_sheet.dart';
import '../../bloc/my_reservation_bloc/my_reservation_bloc.dart';

class MyReservationPage extends StatefulWidget {
  const MyReservationPage({super.key});

  @override
  State<MyReservationPage> createState() => _MyReservationPageState();
}

class _MyReservationPageState extends State<MyReservationPage> {
  late BuildContext myContext;
  final ProfileViewModel profileViewModel = GetIt.instance<ProfileViewModel>();
  final ModifyResViewModel modifyViewModel =
  GetIt.instance<ModifyResViewModel>();

  @override
  Widget build(BuildContext context) {
    myContext = context;
    final stateProfile = context.watch<MyReservationBloc>().state;
    return stateProfile.when(
      loaded: () {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              centerTitle: true,
              title: Text(
                "${LocaleKeys.your_booking.tr()} ${profileViewModel
                    .reservation?.resId}",
                style: Global.switchText,
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Global.darkGreen,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return MyReservationBottomSheet(
                          resID: profileViewModel.reservation?.resId ?? "",
                          email:
                              profileViewModel.reservation?.clientInfo.email ??
                                  "",
                          onModifyRes: () {
                            modifyViewModel.newReservation = profileViewModel
                                .reservation?.clone();
                            modifyViewModel.mastChangeCar = false;
                            modifyViewModel.emailController.text =
                                modifyViewModel.newReservation?.clientInfo.email ?? '';
                            modifyViewModel.phoneController.text =
                                modifyViewModel.newReservation?.clientInfo.phone ?? '';
                            modifyViewModel.commentController.text =
                                modifyViewModel.newReservation?.comment ?? '';
                            modifyViewModel.flightNumberController.text =
                                modifyViewModel.newReservation?.flightNumber ?? '';
                            Navigator.pushNamed(context, "mainPage/myRes/modRes");
                          },
                          onCancelRes: () {
                            AlertsShower.sureAlert(
                              myContext,
                              () {
                                myContext.read<MyReservationBloc>()
                                    .add(const MyReservationEvent.fetch());
                              },
                              LocaleKeys.cancel_res_title.tr(),
                              LocaleKeys.cancel_res_message.tr(),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    LocaleKeys.pick_up_place.tr(),
                    style: Global.searchText,
                  ),
                  const SizedBox(height: 8),
                  MyDateTimeWidget(
                    namePlace:
                        profileViewModel.reservation?.details.pickup.address ??
                            "",
                    timeRes: DateFormatter.getRightFormat(
                        profileViewModel.reservation?.details.pickupDate ?? ""),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    LocaleKeys.dropOff_place.tr(),
                    style: Global.searchText,
                  ),
                  const SizedBox(height: 8),
                  MyDateTimeWidget(
                    namePlace:
                        profileViewModel.reservation?.details.dropoff.address ??
                            "",
                    timeRes: DateFormatter.getRightFormat(
                        profileViewModel.reservation?.details.dropoffDate ??
                            ""),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    LocaleKeys.car_class.tr(),
                    style: Global.searchText,
                  ),
                  const SizedBox(height: 8),
                  (profileViewModel.reservation != null)
                      ? CarItem(car: profileViewModel.reservation!.details.car)
                      : Container(),
                  if (!profileViewModel.reservation!.details.car
                      .extrasIsEmpty())
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 15),
                        MyExtrasWidget(
                          extras:
                              profileViewModel.reservation!.details.car.extras,
                        ),
                      ],
                    ),
                  if (profileViewModel.reservation!.details.car.fees.isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 15),
                        MyFeesWidget(
                          fees: profileViewModel.reservation!.details.car.fees,
                        ),
                      ],
                    ),
                  if (profileViewModel.reservation!.details.car.promo != null)
                    Column(
                      children: [
                        const SizedBox(height: 15),
                        Text(
                          LocaleKeys.payment.tr(),
                          style: Global.searchText,
                        ),
                        const SizedBox(height: 8),
                        MyPaymentWidget(
                          label_1: LocaleKeys.promotion.tr(),
                          value_1: profileViewModel
                                  .reservation?.details.car.promo?.title ??
                              "",
                          label_2: LocaleKeys.terms.tr(),
                          value_2: profileViewModel.reservation?.details.car
                                  .promo?.description ??
                              "",
                        ),
                      ],
                    ),
                  const SizedBox(height: 15),
                  Text(
                    LocaleKeys.payment.tr(),
                    style: Global.searchText,
                  ),
                  const SizedBox(height: 8),
                  MyPaymentWidget(
                    label_1: LocaleKeys.payment_p.tr(),
                    value_1: LocaleKeys.receipt_car.tr(),
                    label_2: LocaleKeys.total_pay.tr(),
                    value_2:
                        '${profileViewModel.getFullSum()} ${profileViewModel
                            .reservation?.details.currency.shortTitle ?? ""}',
                  ),
                  const SizedBox(height: 15),
                  Text(
                    LocaleKeys.add_inform.tr(),
                    style: Global.searchText,
                  ),
                  const SizedBox(height: 8),
                  MyAddInfoWidget(
                    fullName: profileViewModel.getFullName(),
                    email: profileViewModel.reservation?.clientInfo.email ?? "",
                    phone: profileViewModel.reservation?.clientInfo.phone ?? "",
                    flight: profileViewModel.reservation?.flightNumber ?? "",
                    comment: profileViewModel.reservation?.comment ?? "",
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
                "${LocaleKeys.your_booking.tr()} ${profileViewModel
                    .reservation?.resId}",
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
      canceled: () {
        Future.delayed(Duration.zero, () => Navigator.pop(context));
        Future.delayed(
          Duration.zero,
          () => AlertsShower.showMessage(
            context,
            LocaleKeys.cancel_res_title.tr(),
            LocaleKeys.res_been_cancel.tr(),
          ),
        );
        return Container();
      },
      error: (error) {
        Future.delayed(Duration.zero, () => Navigator.pop(context));
        Future.delayed(
            Duration.zero, () => AlertsShower.showAlert(context, error));
        return Container();
      },
    );
  }
}