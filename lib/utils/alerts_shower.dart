import '../res/global.dart';
import 'package:flutter/material.dart';
import '../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class AlertsShower {
  static void showAlert(BuildContext context, String alertText) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(LocaleKeys.error_label.tr()),
        content: Text(alertText),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                color: Global.orange,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    LocaleKeys.ok.tr(),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void showMessage(
      BuildContext context, String messageTitle, String messageText) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(messageTitle),
        content: Text(messageText),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                color: Global.orange,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    LocaleKeys.ok.tr(),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void sureAlert(
    BuildContext widgetContext,
    VoidCallback action,
    String titleText,
    String alertText,
  ) {
    showDialog<String>(
      context: widgetContext,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(titleText),
        content: Text(alertText),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: TextButton(
                    child: Text(
                      LocaleKeys.yes.tr(),
                      style: Global.buttonText,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Future.delayed(Duration.zero, () => action());
                    },
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: TextButton(
                    child: Text(
                      LocaleKeys.cancel.tr(),
                      style: Global.buttonText,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}