import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../../utils/alerts_shower.dart';
import '../../widgets/search_text_field.dart';
import '../../widgets/load_button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../viewModels/profile_view_model.dart';
import '../../../res/generated/locale_keys.g.dart';
import '../../bloc/profile_bloc/profile_bloc.dart';
import '../../widgets/profile/email_bottom_sheet.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ProfileViewModel profViewModel = GetIt.instance<ProfileViewModel>();
  final SharedPreferences sharedPrefs = GetIt.instance<SharedPreferences>();

  @override
  Widget build(BuildContext context) {
    profViewModel.reservation = null;
    profViewModel.savedEmail ??= sharedPrefs.getString('sawed_email');
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          centerTitle: true,
          title: Image.asset(
            'assets/pictures/logo.png',
            width: Global.logoWith,
            fit: BoxFit.contain,
          ),
          actions: [
            (profViewModel.savedEmail != null)
                ? IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Global.darkGreen,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return EmailBottomSheet(
                            onEmailReset: () {
                              setState(() {
                                profViewModel.savedEmail = null;
                              });
                            },
                          );
                        },
                      );
                    },
                  )
                : Container(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      LocaleKeys.pleaseEnterToModifyOrCancelReserv.tr(),
                      style: Global.switchText,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      LocaleKeys.booking_number.tr(),
                      style: Global.searchText,
                    ),
                    const SizedBox(height: 5),
                    SearchTextField(
                      showIcon: false,
                      necessarily: true,
                      hintText: LocaleKeys.booking_number.tr(),
                      controller: profViewModel.reservationController,
                    ),
                    const SizedBox(height: 15),
                    AnimatedCrossFade(
                      duration: const Duration(milliseconds: 200),
                      crossFadeState: (profViewModel.saveEmail) ||
                          (profViewModel.savedEmail == null) ?
                      CrossFadeState.showSecond :
                      CrossFadeState.showFirst,
                      firstChild: Container(),
                      secondChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            LocaleKeys.email.tr(),
                            style: Global.searchText,
                          ),
                          const SizedBox(height: 5),
                          SearchTextField(
                            showIcon: false,
                            necessarily: true,
                            type: TextInputType.emailAddress,
                            hintText: LocaleKeys.email.tr(),
                            controller: profViewModel.emailController,
                          ),
                        ],
                      ),
                    ),
                    SwitchListTile(
                      contentPadding: const EdgeInsets.only(
                          left: 0, right: 0, top: 0, bottom: 0),
                      value: profViewModel.saveEmail,
                      onChanged: (value) {
                        setState(() {
                          profViewModel.saveEmail = value;
                        });
                      },
                      title: Text(
                        (profViewModel.savedEmail == null)
                            ? LocaleKeys.save_email.tr()
                            : LocaleKeys.save_new_email.tr(),
                        style: Global.switchText,
                      ),
                      activeColor: Global.darkGreen,
                      activeTrackColor: Global.green,
                      inactiveThumbColor: Global.grayExtraLight,
                      inactiveTrackColor: Global.grayLight,
                    ),
                  ],
                ),
              ),
            ),
            BlocProvider(
              create: (context) => ProfileBloc(),
              child: LoadButtonWidget(
                whatFunc: 1,
                navRoute: 'mainPage/myRes',
                text: LocaleKeys.findRes.tr(),
                checkAct: () {
                  if (profViewModel.checkInput()) {
                    AlertsShower.showAlert(
                        context, LocaleKeys.not_all_fields_filled.tr());
                    return false;
                  } else {
                    return true;
                  }
                },
                buttonAct: () async {
                  if (profViewModel.emailController.text != "") {
                    if (profViewModel.saveEmail) {
                      await sharedPrefs.setString(
                          'sawed_email', profViewModel.emailController.text);
                      setState(() {
                        profViewModel.savedEmail =
                            profViewModel.emailController.text;
                      });
                    }
                  }
                },
                nothingFoundAct: () {
                  AlertsShower.showAlert(
                      context, LocaleKeys.not_all_fields_filled.tr());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
