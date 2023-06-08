import 'package:flutter/material.dart';
import '../models/responses/presentation_reservation_response.dart';

class ModifyResViewModel {
  bool mastChangeCar = false;
  PresentationReservationResponse? newReservation;
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final commentController = TextEditingController();
  final flightNumberController = TextEditingController();

  void clearAll() {
    newReservation = null;
    emailController.clear();
    phoneController.clear();
    commentController.clear();
    flightNumberController.clear();
  }
}