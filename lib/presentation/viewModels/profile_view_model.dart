import 'package:flutter/material.dart';
import '../models/responses/presentation_reservation_response.dart';

class ProfileViewModel {
  String? savedEmail;
  bool saveEmail = false;
  bool firstNotFound = false;
  PresentationReservationResponse? reservation;
  final emailController = TextEditingController();
  final reservationController = TextEditingController();

  double getFullSum() {
    var finAmount = 0.0;
    for (var it in reservation?.details.car.extras ?? []) {
      if (it.amount != 0) {
        finAmount += it.price * it.amount;
      }
    }
    for (var it in reservation?.details.car.fees ?? []) {
      finAmount += it.price;
    }
    finAmount += reservation?.details.car.price ?? 0.0;
    return finAmount;
  }

  String getFullName() {
    var str = "";
    str += reservation?.clientInfo.firstName ?? "";
    str += " ${reservation?.clientInfo.lastName ?? ""}";
    str += " ${reservation?.clientInfo.patronymic ?? ""}";
    return str;
  }

  bool checkInput() {
    bool checker = false;
    if ((savedEmail == null &&
        emailController.text == "") ||
        (savedEmail != null &&
            saveEmail &&
            emailController.text == "") ||
        (reservationController.text == "")) {
      checker = true;
    }
    if ((emailController.text.isNotEmpty) && ((saveEmail && (savedEmail!=null))
        || (savedEmail==null))) {
      checker = !emailController.text.contains('@');
      if (!checker) {
        checker = !emailController.text.contains('.');
      }
    }
    return checker;
  }
}