import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../../../utils/alerts_shower.dart';
import '../../widgets/search_text_field.dart';
import '../../widgets/next_button_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/loading_button_widget.dart';
import '../../viewModels/booking_view_model.dart';
import '../../bloc/search_org_bloc/search_org_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';
import '../../bloc/regular_booking_bloc/regular_booking_bloc.dart';
import 'package:rentmotors/presentation/page/booking/search_org_page.dart';

class RegularBookingPage extends StatefulWidget {
  const RegularBookingPage({Key? key}) : super(key: key);

  @override
  State<RegularBookingPage> createState() => _RegularBookingPageState();
}

class _RegularBookingPageState extends State<RegularBookingPage> {
  final BookingViewModel bookViewModel = GetIt.instance<BookingViewModel>();

  @override
  Widget build(BuildContext context) {
    final stateBook = context.watch<RegularBookingBloc>().state;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          centerTitle: true,
          title: Text(
            LocaleKeys.personal_information.tr(),
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
              const SizedBox(height: 10),
              Text(
                LocaleKeys.last_name.tr(),
                style: Global.searchText,
              ),
              const SizedBox(height: 5),
              SearchTextField(
                necessarily: true,
                showIcon: false,
                controller: bookViewModel.surnameController,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.first_name.tr(),
                style: Global.searchText,
              ),
              const SizedBox(height: 5),
              SearchTextField(
                necessarily: true,
                showIcon: false,
                controller: bookViewModel.nameController,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.patronymic.tr(),
                style: Global.searchText,
              ),
              const SizedBox(height: 5),
              if(bookViewModel.fromRussia)
                SearchTextField(
                  necessarily: true,
                  showIcon: false,
                  controller: bookViewModel.patronymicController,
                ),
              if(!bookViewModel.fromRussia)
                SearchTextField(
                  showIcon: false,
                  controller: bookViewModel.patronymicController,
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
              const SizedBox(height: 40),
              Text(
                LocaleKeys.contact_data.tr(),
                style: Global.switchText,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.email.tr(),
                style: Global.searchText,
              ),
              const SizedBox(height: 5),
              SearchTextField(
                type: TextInputType.emailAddress,
                necessarily: true,
                showIcon: false,
                controller: bookViewModel.emailController,
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
              const SizedBox(height: 10),
              Text(
                LocaleKeys.flight_number.tr(),
                style: Global.searchText,
              ),
              const SizedBox(height: 5),
              SearchTextField(
                showIcon: false,
                hintText: LocaleKeys.optional.tr(),
                controller: bookViewModel.flightNumberController,
              ),
              const SizedBox(height: 3),
              Text(
                LocaleKeys.if_you_flight_delayed.tr(),
                style: Global.nanoText,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.comment.tr(),
                style: Global.searchText,
              ),
              const SizedBox(height: 5),
              SearchTextField(
                showIcon: false,
                hintText: LocaleKeys.optional.tr(),
                controller: bookViewModel.commentController,
              ),
              const SizedBox(height: 10),
              SwitchListTile(
                contentPadding:
                    const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                value: bookViewModel.readRentTerms,
                onChanged: (bool value) {
                  setState(() {
                    bookViewModel.readRentTerms = value;
                  });
                },
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: LocaleKeys.introdused_and_accept.tr(),
                        style: Global.switchNewText,
                      ),
                      const TextSpan(
                        text: " ",
                        style: Global.switchNewText,
                      ),
                      TextSpan(
                        text: LocaleKeys.rent_terms.tr(),
                        style: Global.switchUrlText,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            openRentTerms();
                          },
                      ),
                      const TextSpan(
                        text: " ",
                        style: Global.switchNewText,
                      ),
                      TextSpan(
                        text: LocaleKeys.and.tr(),
                        style: Global.switchNewText,
                      ),
                      const TextSpan(
                        text: " ",
                        style: Global.switchNewText,
                      ),
                      TextSpan(
                        text: LocaleKeys.privacy_policy.tr(),
                        style: Global.switchUrlText,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            openPrivacyPolicy();
                          },
                      ),
                    ],
                  ),
                ),
                activeColor: Global.darkGreen,
                activeTrackColor: Global.green,
                inactiveThumbColor: Global.grayExtraLight,
                inactiveTrackColor: Global.grayLight,
              ),
              const SizedBox(height: 10),
              SwitchListTile(
                contentPadding:
                    const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                value: bookViewModel.organizationRent,
                onChanged: (bool value) {
                  setState(() {
                    bookViewModel.organizationRent = value;
                  });
                },
                title: Text(
                  LocaleKeys.org_payment.tr(),
                  style: Global.switchNewText,
                ),
                activeColor: Global.darkGreen,
                activeTrackColor: Global.green,
                inactiveThumbColor: Global.grayExtraLight,
                inactiveTrackColor: Global.grayLight,
              ),
              if (bookViewModel.organizationRent)
                const SizedBox(height: 10),
              if (bookViewModel.organizationRent)
                Text(
                  LocaleKeys.org.tr(),
                  style: Global.searchText,
                ),
              if (bookViewModel.organizationRent)
                const SizedBox(height: 5),
              if (bookViewModel.organizationRent)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => SearchOrgBloc(),
                          child: SearchOrgPage(
                            controller:
                                bookViewModel.organizationController,
                            hint: LocaleKeys.enter_organisation_name.tr(),
                          ),
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
                      hintText: LocaleKeys.enter_organisation_name.tr(),
                      controller: bookViewModel.organizationController,
                    ),
                  ),
                ),
              const SizedBox(height: 15),
              stateBook.when(
                loading: () {
                  return const LoadingButtonWidget();
                },
                loaded: () {
                  if (bookViewModel.reallyLoaded) {
                    if (bookViewModel.newClient == 1) {
                      //переходим на экран создания нового клиента
                      Future.delayed(
                        Duration.zero,
                            () =>
                            Navigator.pushNamed(
                              context,
                              "mainPage/searchCars/chooseExtras/regularBook/newBook",
                            ),
                      );
                    } else if ((bookViewModel.newClient == 0) && (bookViewModel
                        .bookResult != null)) {
                      //переходим на экран завершения аренды
                      Future.delayed(
                        Duration.zero,
                            () =>
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              "mainPage/searchCars/chooseExtras/regularBook/doneBook",
                                  (Route<dynamic> route) => false,
                            ),
                      );
                    }
                  }
                  return NextButtonWidget(
                    text: LocaleKeys.next.tr(),
                    nextAct: () {
                      if (bookViewModel.readRentTerms) {
                        if (bookViewModel.checkInputValues()) {
                          context.read<RegularBookingBloc>().add(
                            const RegularBookingEvent.fetch(),
                          );
                        } else {
                          AlertsShower.showAlert(context, LocaleKeys
                              .not_all_fields_filled.tr());
                        }
                      } else {
                        AlertsShower.showAlert(context, LocaleKeys
                            .rent_terms_error.tr());
                      }
                    },
                  );
                },
                error: (String error) {
                  Future.delayed(
                    Duration.zero,
                    () => AlertsShower.showAlert(context, error),
                  );
                  return NextButtonWidget(
                    text: LocaleKeys.next.tr(),
                    nextAct: () {
                      if (bookViewModel.readRentTerms) {
                        if (bookViewModel.checkInputValues()) {
                          context.read<RegularBookingBloc>().add(
                            const RegularBookingEvent.fetch(),
                          );
                        } else {
                          AlertsShower.showAlert(context, LocaleKeys
                              .not_all_fields_filled.tr());
                        }
                      } else {
                        AlertsShower.showAlert(context, LocaleKeys
                            .rent_terms_error.tr());
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

  Future<void> openRentTerms() async {
    final url = Uri.parse(
      LocaleKeys.rent_terms_link.tr(),
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Не удалось открыть условия анерды.';
    }
  }

  Future<void> openPrivacyPolicy() async {
    final url = Uri.parse(
      LocaleKeys.privacy_policy_link.tr(),
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Не удалось открыть условия анерды.';
    }
  }
}