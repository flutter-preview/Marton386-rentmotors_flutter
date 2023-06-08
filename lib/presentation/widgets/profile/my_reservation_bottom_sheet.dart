import '../../../res/global.dart';
import '../next_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class MyReservationBottomSheet extends StatelessWidget {
  const MyReservationBottomSheet({
    Key? key,
    required this.resID,
    required this.email,
    required this.onModifyRes,
    required this.onCancelRes,
  }) : super(key: key);
  final String resID;
  final String email;
  final VoidCallback onModifyRes;
  final VoidCallback onCancelRes;

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
            onTap: () async {
              openVoucher();
              Future.delayed(Duration.zero, () => Navigator.pop(context));
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    size: 20,
                    Icons.confirmation_number,
                    color: Global.getIconColor(context),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    LocaleKeys.voucher_conf.tr(),
                    style: Global.notBoldHeaderText,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              onModifyRes();
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    size: 20,
                    Icons.edit,
                    color: Global.getIconColor(context),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    LocaleKeys.mod_res.tr(),
                    style: Global.notBoldHeaderText,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              onCancelRes();
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    size: 20,
                    Icons.cancel,
                    color: Global.getIconColor(context),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    LocaleKeys.can_res.tr(),
                    style: Global.notBoldHeaderText,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
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

  Future<void> openVoucher() async {
    final url = Uri.parse(
      'https://old.rentmotors.ru/detail/confirmation/?res_id=$resID&email=$email',
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Не удалось открыть ваучер.';
    }
  }
}
