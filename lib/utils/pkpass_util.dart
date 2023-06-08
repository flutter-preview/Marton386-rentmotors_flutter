import 'dart:io';
import 'alerts_shower.dart';
import 'header_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';

class PkpassUtil {
  static const MethodChannel _channel = MethodChannel('pkpass_util');

  static Future<void> downloadAndOpenPkpass(String resId, String email,
      BuildContext context) async {
    try {
      final Map<String, String> headers = {
        "x-token": HeaderHelper.rmToken,
        "x-lng": HeaderHelper.localeCode,
      };
      String url = "https://api.onlinefleet.ru/1.0/wallet_pass?res_id="
          "$resId&email=$email";
      await _channel.invokeMethod('downloadAndOpenPkpass', {
        'url': url,
        'headers': headers,
      });
    } on PlatformException catch (_) {
      AlertsShower.showAlert(context, LocaleKeys.failure_get_data.tr());
      return;
    } on HttpException catch (_) {
      AlertsShower.showAlert(context, LocaleKeys.failure_get_data.tr());
      return;
    } on SocketException {
      AlertsShower.showAlert(context, LocaleKeys.failure_get_data.tr());
      return;
    } catch (e) {
      AlertsShower.showAlert(context, LocaleKeys.failure_get_data.tr());
      return;
    }
  }
}