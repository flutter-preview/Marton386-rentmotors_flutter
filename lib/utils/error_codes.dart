import '../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class ErrorCodes {
  // ignore: non_constant_identifier_names
  final int FAILURE = -1;
  // ignore: non_constant_identifier_names
  final int REQUEST_FAILURE = -2;
  // ignore: non_constant_identifier_names
  final int ALREADY_BOOKED = 114;

  String getMessageByCode(int code) {
    switch(code) {
      case -1:
        return LocaleKeys.failure.tr();
      case -2:
        return LocaleKeys.failure_get_data.tr();
      case 114:
        return LocaleKeys.already_booked.tr();
      default:
        return LocaleKeys.error_label.tr();
    }
  }
}