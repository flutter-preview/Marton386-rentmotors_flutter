import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../../utils/alerts_shower.dart';
import '../../../utils/date_formatter.dart';
import '../../widgets/search_text_field.dart';
import '../../widgets/next_button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/loading_button_widget.dart';
import '../../viewModels/booking_view_model.dart';
import '../../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../bloc/new_booking_bloc/new_booking_bloc.dart';


class NewBookingPage extends StatefulWidget {
  const NewBookingPage({Key? key}) : super(key: key);

  @override
  State<NewBookingPage> createState() => _NewBookingPageState();
}

class _NewBookingPageState extends State<NewBookingPage> {
  final BookingViewModel bookViewModel = GetIt.instance<BookingViewModel>();
  String birthInitialDate = DateFormatter.strFromDate(DateTime.now().subtract(
      const Duration(days: (365 * 18) +  4)));

  @override
  Widget build(BuildContext context) {
    final stateBook = context.watch<NewBookingBloc>().state;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          centerTitle: true,
          title: Text(
            LocaleKeys.personal_data.tr(),
            style: Global.justText,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                LocaleKeys.personal_information.tr(),
                style: Global.switchText,
              ),
              AnimatedCrossFade(
                duration: const Duration(milliseconds: 200),
                crossFadeState: !bookViewModel.fromRussia ?
                CrossFadeState.showFirst :
                CrossFadeState.showSecond,
                firstChild: Container(),
                secondChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      LocaleKeys.patronymic.tr(),
                      style: Global.searchText,
                    ),
                    const SizedBox(height: 5),
                    SearchTextField(
                      necessarily: true,
                      showIcon: false,
                      controller: bookViewModel.patronymicController,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.date_of_birth.tr(),
                style: Global.searchText,
              ),
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateFormatter.getDateTime(birthInitialDate),
                    firstDate: DateTime(1920),
                    lastDate: DateFormatter.getDateTime(birthInitialDate),
                  );
                  if ((picked != null) && (picked.toString() != "")) {
                    setState(() {
                      bookViewModel.birthDayController.text = DateFormatter
                          .getUserDateFromDate(picked);
                    });
                  }
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
                    type: TextInputType.datetime,
                    necessarily: true,
                    showIcon: false,
                    hintText: LocaleKeys.date_format.tr(),
                    controller: bookViewModel.birthDayController,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.passport_data.tr(),
                style: Global.switchText,
              ),
              const SizedBox(height: 10),
              SwitchListTile(
                contentPadding: const EdgeInsets.only(
                    left: 0, right: 0, top: 0, bottom: 0),
                value: bookViewModel.fromRussia,
                onChanged: (value) => setState(() {
                  bookViewModel.changeFromRussia(value);
                }),
                title: Text(
                  LocaleKeys.citizenship_rf.tr(),
                  style: Global.switchText,
                ),
                activeColor: Global.darkGreen,
                activeTrackColor: Global.green,
                inactiveThumbColor: Global.grayExtraLight,
                inactiveTrackColor: Global.grayLight,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          LocaleKeys.series_and_number.tr(),
                          style: Global.searchText,
                        ),
                        const SizedBox(height: 5),
                        SearchTextField(
                          necessarily: true,
                          showIcon: false,
                          controller: bookViewModel.seriesAndNumberController,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          LocaleKeys.date_of_issue.tr(),
                          style: Global.searchText,
                        ),
                        const SizedBox(height: 5),
                        GestureDetector(
                          onTap: () async {
                            final DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now().subtract(
                                const Duration(days: 1),
                              ),
                              firstDate: DateTime(1920),
                              lastDate: DateTime.now(),
                            );
                            if ((picked != null) && (picked.toString() != "")) {
                              setState(() {
                                bookViewModel.dateOfIssueController.text =
                                    DateFormatter.getUserDateFromDate(picked);
                              });
                            }
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
                              type: TextInputType.datetime,
                              necessarily: true,
                              showIcon: false,
                              hintText: LocaleKeys.date_format.tr(),
                              controller: bookViewModel.dateOfIssueController,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              AnimatedCrossFade(
                duration: const Duration(milliseconds: 200),
                crossFadeState: !bookViewModel.fromRussia ?
                CrossFadeState.showFirst :
                CrossFadeState.showSecond,
                firstChild: Container(),
                secondChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      LocaleKeys.place_of_birth.tr(),
                      style: Global.searchText,
                    ),
                    const SizedBox(height: 5),
                    SearchTextField(
                      necessarily: true,
                      showIcon: false,
                      controller: bookViewModel.birthPlaceController,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      LocaleKeys.issued_by.tr(),
                      style: Global.searchText,
                    ),
                    const SizedBox(height: 5),
                    SearchTextField(
                      necessarily: true,
                      showIcon: false,
                      controller: bookViewModel.issuePassportController,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      LocaleKeys.registration_address.tr(),
                      style: Global.searchText,
                    ),
                    const SizedBox(height: 5),
                    SearchTextField(
                      necessarily: true,
                      showIcon: false,
                      controller: bookViewModel.registerAddressController,
                    ),
                  ],
                ),
              ),
              AnimatedCrossFade(
                duration: const Duration(milliseconds: 200),
                crossFadeState: bookViewModel.fromRussia ?
                CrossFadeState.showFirst :
                CrossFadeState.showSecond,
                firstChild: Container(),
                secondChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      LocaleKeys.passport_issued_by_country.tr(),
                      style: Global.searchText,
                    ),
                    const SizedBox(height: 5),
                    SearchTextField(
                      necessarily: true,
                      showIcon: false,
                      controller: bookViewModel.passportCountryController,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.driver_license_data.tr(),
                style: Global.switchText,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          LocaleKeys.series_and_number.tr(),
                          style: Global.searchText,
                        ),
                        const SizedBox(height: 5),
                        SearchTextField(
                          necessarily: true,
                          showIcon: false,
                          controller: bookViewModel
                              .driverSeriesAndNumberController,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          LocaleKeys.date_of_issue.tr(),
                          style: Global.searchText,
                        ),
                        const SizedBox(height: 5),
                        GestureDetector(
                          onTap: () async {
                            final DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now().subtract(
                                const Duration(days: 1),
                              ),
                              firstDate: DateTime(1920),
                              lastDate: DateTime.now(),
                            );
                            if ((picked != null) && (picked.toString() != "")) {
                              setState(() {
                                bookViewModel.driverDateOfIssueController.text =
                                    DateFormatter.getUserDateFromDate(picked);
                              });
                            }
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
                              type: TextInputType.datetime,
                              necessarily: true,
                              showIcon: false,
                              hintText: LocaleKeys.date_format.tr(),
                              controller: bookViewModel
                                  .driverDateOfIssueController,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.contact_data.tr(),
                style: Global.switchText,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.phone.tr(),
                style: Global.searchText,
              ),
              const SizedBox(height: 5),
              SearchTextField(
                type: TextInputType.phone,
                necessarily: true,
                showIcon: false,
                controller: bookViewModel.phoneController,
              ),
              const SizedBox(height: 40),
              stateBook.when(
                loaded: () {
                  if (bookViewModel.bookResult != null) {
                    //переходим на экран завершения аренды
                    Future.delayed(
                      Duration.zero,
                      () => Navigator.of(context).pushNamedAndRemoveUntil(
                        "mainPage/searchCars/chooseExtras/regularBook/doneBook",
                        (Route<dynamic> route) => false,
                      ),
                    );
                  }
                  return NextButtonWidget(
                    text: LocaleKeys.next.tr(),
                    nextAct: () {
                      if (bookViewModel.checkNewInputValues()) {
                        context.read<NewBookingBloc>().add(
                          const NewBookingEvent.fetch(),
                        );
                      } else {
                        AlertsShower.showAlert(context, LocaleKeys
                            .not_all_fields_filled.tr());
                      }
                    },
                  );
                },
                loading: () {
                  return const LoadingButtonWidget();
                },
                error: (String error) {
                  Future.delayed(
                    Duration.zero,
                        () => AlertsShower.showAlert(context, error),
                  );
                  return NextButtonWidget(
                    text: LocaleKeys.next.tr(),
                    nextAct: () {
                      if (bookViewModel.checkNewInputValues()) {
                        context.read<NewBookingBloc>().add(
                          const NewBookingEvent.fetch(),
                        );
                      } else {
                        AlertsShower.showAlert(context, LocaleKeys
                            .not_all_fields_filled.tr());
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}