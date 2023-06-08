import 'header_helper.dart';
import 'package:intl/intl.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';

class DateFormatter {
  static var headerHelper = GetIt.instance<HeaderHelper>();

  static String getRightFormat(String str) {
    String inputDate = "${str.substring(0, 4)}-${str.substring(4, 6)}-${str
        .substring(6, 8)}-${str.substring(8, 10)}:${str.substring(10, 12)}";
    DateTime dateTime = DateFormat('yyyy-MM-dd-HH:mm').parse(inputDate);

    DateFormat formatter = DateFormat('dd MMMM yyyy, HH:mm', HeaderHelper.localeCode);
    String formatted = formatter.format(dateTime);
    return formatted;
  }

  static String getMonthDayFormat(String str) {
    String inputDate = "${str.substring(0, 4)}-${str.substring(4, 6)}-${str
        .substring(6, 8)}-${str.substring(8, 10)}:${str.substring(10, 12)}";
    DateTime dateTime = DateFormat('yyyy-MM-dd-HH:mm').parse(inputDate);

    DateFormat formatter = DateFormat('dd MMMM', HeaderHelper.localeCode);
    String formatted = formatter.format(dateTime);
    return formatted;
  }

  static String getTimeFormat(String str) {
    String inputDate = "${str.substring(0, 4)}-${str.substring(4, 6)}-${str
        .substring(6, 8)}-${str.substring(8, 10)}:${str.substring(10, 12)}";
    DateTime dateTime = DateFormat('yyyy-MM-dd-HH:mm').parse(inputDate);

    DateFormat formatter = DateFormat("HH:mm", HeaderHelper.localeCode);
    String formatted = formatter.format(dateTime);
    return formatted;
  }

  static String getWeekDayFormat(String str) {
    String inputDate = "${str.substring(0, 4)}-${str.substring(4, 6)}-${str
        .substring(6, 8)}-${str.substring(8, 10)}:${str.substring(10, 12)}";
    DateTime dateTime = DateFormat('yyyy-MM-dd-HH:mm').parse(inputDate);

    DateFormat formatter = DateFormat(DateFormat.WEEKDAY, HeaderHelper.localeCode);
    String formatted = formatter.format(dateTime);
    return formatted;
  }

  static DateTime getDateTime(String str) {
    String inputDate = "${str.substring(0, 4)}-${str.substring(4, 6)}-${str
        .substring(6, 8)}-${str.substring(8, 10)}:${str.substring(10, 12)}";
    DateTime dateTime = DateFormat('yyyy-MM-dd-HH:mm').parse(inputDate);
    return dateTime;
  }

  static TimeOfDay getTime(String str) {
    String inputDate = "${str.substring(0, 4)}-${str.substring(4, 6)}-${str
        .substring(6, 8)}-${str.substring(8, 10)}:${str.substring(10, 12)}";
    DateTime dateTime = DateFormat('yyyy-MM-dd-HH:mm').parse(inputDate);
    TimeOfDay time = TimeOfDay.fromDateTime(dateTime);
    return time;
  }

  static String getDateFromDate(DateTime dateTime) {
    DateFormat formatter = DateFormat("yyyyMMdd", HeaderHelper.localeCode);
    String formatted = formatter.format(dateTime);
    return formatted;
  }

  static String getUserDateFromDate(DateTime dateTime) {
    DateFormat formatter = DateFormat("dd/MM/yyyy", HeaderHelper.localeCode);
    String formatted = formatter.format(dateTime);
    return formatted;
  }

  static String toServerFromUser(String date) {
    DateTime dateTime = DateFormat('dd/MM/yyyy').parse(date);
    DateFormat formatter = DateFormat("yyyyMMdd", HeaderHelper.localeCode);
    String formatted = formatter.format(dateTime);
    return formatted;
  }

  static String getTimeFromTime(TimeOfDay timeOfDay) {
    final String hour = timeOfDay.hour.toString().padLeft(2, '0');
    final String minute = timeOfDay.minute.toString().padLeft(2, '0');
    return '$hour$minute';
  }

  static String strFromDate(DateTime dateTime) {
    DateFormat formatter = DateFormat("yyyyMMddHHmm", HeaderHelper.localeCode);
    String formatted = formatter.format(dateTime);
    return formatted;
  }

  static int compareStringDates(String date1, String date2) {
    String inputDate1 = "${date1.substring(0, 4)}-${date1.substring(4, 6)}-${date1
        .substring(6, 8)}-${date1.substring(8, 10)}:${date1.substring(10, 12)}";
    DateTime dateTime1 = DateFormat('yyyy-MM-dd-HH:mm').parse(inputDate1);

    String inputDate2 = "${date2.substring(0, 4)}-${date2.substring(4, 6)}-${date2
        .substring(6, 8)}-${date2.substring(8, 10)}:${date2.substring(10, 12)}";
    DateTime dateTime2 = DateFormat('yyyy-MM-dd-HH:mm').parse(inputDate2);

    if (dateTime1.isBefore(dateTime2)) {
      return -1; // date1 меньше date2
    } else if (dateTime1.isAfter(dateTime2)) {
      return 1; // date1 больше date2
    } else {
      return 0; // date1 равна date2
    }
  }
}