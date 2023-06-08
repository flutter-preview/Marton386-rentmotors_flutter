import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../next_button_widget.dart';
import '../../viewModels/profile_view_model.dart';
import '../../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EmailBottomSheet extends StatelessWidget {
  EmailBottomSheet({super.key, required this.onEmailReset});
  final VoidCallback onEmailReset;
  final ProfileViewModel profViewModel = GetIt.instance<ProfileViewModel>();
  final SharedPreferences sharedPrefs = GetIt.instance<SharedPreferences>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      color: theme.primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.settings.tr(),
                  style: Global.bigHeaderText,
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onEmailReset();
              sharedPrefs.remove('sawed_email');
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                LocaleKeys.forgot_email.tr(),
                style: Global.notBoldHeaderText,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: NextButtonWidget(
              text: LocaleKeys.cancel.tr(),
              nextAct: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}