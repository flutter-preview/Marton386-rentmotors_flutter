import 'package:intl/intl.dart';

class PriceFormatter {
  static final formatter = NumberFormat("#,###");

  static final formatterWithDecimals = NumberFormat("#,##0.00");

  static String formatNoDecimals(double price) {
    return formatter.format(price);
  }

  static String formatWithDecimals(double price) {
    return formatterWithDecimals.format(price);
  }

  static String format(double price) {
    if (price.remainder(1) == 0) {
      return formatNoDecimals(price);
    } else {
      return formatWithDecimals(price);
    }
  }
}