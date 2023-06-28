import 'package:flutter/material.dart';
import '../../utils/date_formatter.dart';
import '../../res/generated/locale_keys.g.dart';
import '../models/responses/presentation_book.dart';
import '../models/responses/car/presentation_car.dart';
import '../models/responses/presentation_station.dart';
import 'package:easy_localization/easy_localization.dart';
import '../models/requests/presentation_booking_request.dart';
import '../models/requests/presentation_booking_org_request.dart';
import '../models/responses/presentation_search_car_response.dart';
import '../models/responses/suggestion/presentation_suggestion.dart';

class BookingViewModel {
  List<PresentationStation> stations = [];
  List<PresentationStation> filteredStartStations = [];
  List<PresentationStation> filteredEndStations = [];
  bool searchForBooking = false;

  //car & extras pages
  PresentationSearchCarResponse? searchCars;
  PresentationCar? car;

  //start page
  String startBookingDate = DateFormatter.strFromDate(DateTime.now()
      .add(const Duration(hours: 1)));
  String endBookingDate = DateFormatter.strFromDate(DateTime.now()
      .add(const Duration(days: 1, hours: 1)));
  bool sameLocationDropOff = true;
  PresentationStation? startStation;
  PresentationStation? endStation;
  final tvPickUpLocationController = TextEditingController();
  final tvDropOffLocationController = TextEditingController();

  //user page (regular)
  final surnameController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final flightNumberController = TextEditingController();
  final commentController = TextEditingController();
  bool readRentTerms = false;
  bool organizationRent = false;
  final organizationController = TextEditingController();
  PresentationSuggestion? organization;

  //user page (new)
  bool fromRussia = true;
  final birthDayController = TextEditingController();
  final seriesAndNumberController = TextEditingController();
  final dateOfIssueController = TextEditingController();
  final driverSeriesAndNumberController = TextEditingController();
  final driverDateOfIssueController = TextEditingController();
  final phoneController = TextEditingController();
  //russia
  final patronymicController = TextEditingController();
  final birthPlaceController = TextEditingController();
  final issuePassportController = TextEditingController();
  final registerAddressController = TextEditingController();
  //other
  final passportCountryController = TextEditingController();
  //Book result
  PresentationBook? bookResult;

  //Check client
  int? newClient;
  int? idClient;
  bool reallyLoaded = false;

  void changeFromRussia(bool value) {
    fromRussia = value;
  }


  //Station info
  void setStartStation(PresentationStation newStation) {
    startStation = newStation;
    tvPickUpLocationController.text = newStation.name;
    if (sameLocationDropOff) {
      endStation = newStation;
    }
  }

  //Start booking
  void changeSameLocation(bool value) {
    sameLocationDropOff = value;
    if (sameLocationDropOff) {
      tvDropOffLocationController.text = tvPickUpLocationController.text;
      endStation = startStation;
    } else {
      tvDropOffLocationController.text = "";
      endStation = null;
      filteredEndStations = stations;
    }
  }

  bool checkStartButton() {
    if (((startStation != null) && sameLocationDropOff) ||
        ((startStation != null) && (endStation != null))) {
      return true;
    } else {
      return false;
    }
  }

  void updateFilteredStartStations() {
    final searchText = tvPickUpLocationController.text.toLowerCase();

    if (searchText.isEmpty) {
      filteredStartStations = List.from(stations);
    } else {
      filteredStartStations = stations.where((station) {
        final stationName = station.name.toLowerCase();
        return stationName.contains(searchText);
      }).toList();
    }
  }

  void updateFilteredEndStations() {
    final searchText = tvDropOffLocationController.text.toLowerCase();

    if (searchText.isEmpty) {
      filteredEndStations = List.from(stations);
    } else {
      filteredEndStations = stations.where((station) {
        final stationName = station.name.toLowerCase();
        return stationName.contains(searchText);
      }).toList();
    }
  }

  //stations bloc
  void setStations(List<PresentationStation> list) {
    stations = list;
    filteredStartStations = list;
    filteredEndStations = list;
  }

  //Search station
  void selectStartStation(int stationID) {
    int counter = 0;
    int selectedStation = -1;
    while ((counter < stations.length-1) && (selectedStation == -1)) {
      if (stations[counter].id == stationID) {
        selectedStation = counter;
      }
      counter++;
    }
    setStartStation(stations[selectedStation]);
  }

  void selectEndStation(int stationID) {
    int counter = 0;
    int selectedStation = -1;
    while ((counter < stations.length-1) && (selectedStation == -1)) {
      if (stations[counter].id == stationID) {
        selectedStation = counter;
      }
      counter++;
    }
    setEndStation(stations[selectedStation]);
  }

  void setEndStation(PresentationStation newStation) {
    endStation = newStation;
    tvDropOffLocationController.text = newStation.name;
  }

  //Booking details
  double getFullSum() {
    var finAmount = 0.0;
    for (var it in car?.extras ?? []) {
      if (it.amount != 0) {
        finAmount += it.price * it.amount;
      }
    }
    for (var it in car?.fees ?? []) {
      finAmount += it.price;
    }
    finAmount += car?.price ?? 0.0;
    return finAmount;
  }

  bool isValidWord(String name) {
    RegExp regExp = RegExp(r'^[a-zA-Zа-яА-Я\s\-]+$');
    return regExp.hasMatch(name) &&
        !name.startsWith(' ') &&
        !name.startsWith('-') &&
        !name.endsWith(' ') &&
        !name.endsWith('-') &&
        !name.contains('  ') &&
        !name.contains('--');
  }

  bool isValidNumber(String number) {
    RegExp regExp = RegExp(r'^[0-9\s]+$');
    return regExp.hasMatch(number) &&
        !number.startsWith(' ') &&
        !number.endsWith(' ') &&
        !number.contains('  ');
  }

  bool isBorderValidNumber(String str) {
    RegExp regExp = RegExp(r'^[0-9a-zA-Z\s\-]+$');
    return regExp.hasMatch(str) &&
        !str.startsWith(' ') &&
        !str.startsWith('-') &&
        !str.endsWith(' ') &&
        !str.endsWith('-') &&
        !str.contains('  ') &&
        !str.contains('--');
  }

  bool isValidNormalStr(String surname) {
    RegExp regExp = RegExp(r'^[0-9a-zA-Zа-яА-Я\s\-\.\,\/]+$');
    return regExp.hasMatch(surname) &&
        !surname.startsWith(' ') &&
        !surname.startsWith('-') &&
        !surname.startsWith('.') &&
        !surname.startsWith(',') &&
        !surname.startsWith('/') &&
        !surname.endsWith(' ') &&
        !surname.endsWith('-') &&
        !surname.endsWith('.') &&
        !surname.endsWith(',') &&
        !surname.endsWith('/') &&
        !surname.contains('  ') &&
        !surname.contains('--') &&
        !surname.contains('..') &&
        !surname.contains(',,') &&
        !surname.contains('//');
  }

  //Regular booking page
  bool checkInputValues() {
    bool checker = emailController.text.contains('@');
    if (surnameController.text.isEmpty) {
      checker = false;
    }
    if (!isValidWord(surnameController.text)) {
      checker = false;
    }
    if (nameController.text.isEmpty) {
      checker = false;
    }
    if (!isValidWord(nameController.text)) {
      checker = false;
    }
    if (phoneController.text.isEmpty) {
      checker = false;
    }
    if (checker) {
      checker = emailController.text.contains('.');
    }
    if (organizationRent && (organization == null)) {
      checker = false;
    }
    if (fromRussia) {
      if(patronymicController.text.isEmpty) {
        checker = false;
      }
    }
    if (!isValidWord(patronymicController.text) && patronymicController.text.isNotEmpty) {
      checker = false;
    }
    return checker;
  }

  int daysBetween(DateTime from, DateTime to) {
    return (to.difference(from).inMinutes / (24*60)).ceil();
  }

  int getCountDays() {
    DateTime from = DateFormatter.getDateTime(startBookingDate);
    DateTime to = DateFormatter.getDateTime(endBookingDate);
    return daysBetween(from, to);
  }

  //Regular booking bloc
  PresentationBookingRequest getRegularBookRequest() {
    String carId = car?.id ?? "";
    PresentationClient clientInfo = PresentationClient(
      firstName: nameController.text,
      lastName: surnameController.text,
      patronymic: patronymicController.text,
      email: emailController.text,
      phone: phoneController.text,
      country: fromRussia ?
      LocaleKeys.russia.tr() : null,
      clientId: idClient,
    );
    List<PresentationOrderExtra> extras = car
        ?.extras.map((elem) => PresentationOrderExtra(
      extrasShortCode: elem.code,
      quantity: elem.amount,
      adr: elem.address ?? "",
    )).toList() ?? [];
    return PresentationBookingRequest(
      carId: carId,
      clientInfo: clientInfo,
      extras: extras,
      flightNumber: flightNumberController.text,
      comments: commentController.text,
      newClient: newClient ?? 1,
    );
  }

  PresentationBookingOrgRequest getRegularBookOrgRequest() {
    String carId = car?.id ?? "";
    PresentationClient clientInfo = PresentationClient(
      firstName: nameController.text,
      lastName: surnameController.text,
      email: emailController.text,
      clientId: idClient,
    );
    List<PresentationOrderExtra> extras = car
        ?.extras.map((elem) => PresentationOrderExtra(
      extrasShortCode: elem.code,
      quantity: elem.amount,
      adr: elem.address ?? "",
    )).toList() ?? [];
    return PresentationBookingOrgRequest(
      carId: carId,
      clientInfo: clientInfo,
      extras: extras,
      flightNumber: flightNumberController.text,
      comments: commentController.text,
      newClient: newClient ?? 1,
      entityInfo: PresentationEntityInfo(
        fullTitle: organization?.data.name.fullWithOpf ?? "",
        shortTitle: organization?.data.name.shortWithOpf ?? "",
        tin: organization?.data.inn ?? "",
        psrn: organization?.data.ogrn ?? "",
        iec: organization?.data.kpp ?? "",
        phone: "",
        email: "",
        managerName: organization?.data.management?.name ?? "",
        managerPost: organization?.data.management?.post ?? "",
        legalAAddress: organization?.data.address.value ?? "",
        postalAddress: "",
      ),
    );
  }

  //New booking page
  bool checkNewInputValues() {
    bool checker = true;
    if (birthDayController.text.isEmpty) {
      checker = false;
    } else if (seriesAndNumberController.text.isEmpty) {
      checker = false;
    } else if (dateOfIssueController.text.isEmpty) {
      checker = false;
    } else if (driverSeriesAndNumberController.text.isEmpty) {
      checker = false;
    } else if (driverDateOfIssueController.text.isEmpty) {
      checker = false;
    } else if (!isValidNumber(driverSeriesAndNumberController.text)) {
      checker = false;
    }
    if (fromRussia) {
      if(birthPlaceController.text.isEmpty) {
        checker = false;
      } else if(!isValidNormalStr(birthPlaceController.text)) {
        checker = false;
      } else if(issuePassportController.text.isEmpty) {
        checker = false;
      } else if(!isValidNormalStr(issuePassportController.text)) {
        checker = false;
      } else if(registerAddressController.text.isEmpty) {
        checker = false;
      } else if(!isValidNormalStr(registerAddressController.text)) {
        checker = false;
      } else if(!isValidNumber(seriesAndNumberController.text)) {
        checker = false;
      }
    } else {
      if(passportCountryController.text.isEmpty) {
        checker = false;
      } else if(!isBorderValidNumber(seriesAndNumberController.text)) {
        checker = false;
      } else if(!isValidNormalStr(passportCountryController.text)) {
        checker = false;
      }
    }
    return checker;
  }

  //////////////////////
  //////////////////////
  //////////////////////
  //////////////////////
  //////////////////////
  //////////////////////
  //New booking bloc
  PresentationBookingRequest getNewBookRequest() {
    String carId = car?.id ?? "";
    PresentationClient clientInfo = PresentationClient(
      firstName: nameController.text,
      lastName: surnameController.text,
      patronymic: fromRussia ? patronymicController.text : "",
      phone: phoneController.text,
      email: emailController.text,
      country: fromRussia ?
      LocaleKeys.russia.tr() :
      passportCountryController.text,
      address: fromRussia ? registerAddressController.text : "",
      birthday: DateFormatter.toServerFromUser(birthDayController.text),
      clientId: idClient,
    );
    PresentationPassport passport = PresentationPassport(
      number: seriesAndNumberController.text,
      country: fromRussia ?
      LocaleKeys.russia.tr() :
      passportCountryController.text,
      issue: fromRussia ? issuePassportController.text : "",
      issueDate: DateFormatter.toServerFromUser(dateOfIssueController.text),
    );
    PresentationDriverLicense driverLicense = PresentationDriverLicense(
      number: driverSeriesAndNumberController.text,
      issueDate: DateFormatter.toServerFromUser(
        driverDateOfIssueController.text,
      ),
    );
    List<PresentationOrderExtra> extras = car
        ?.extras.map((elem) => PresentationOrderExtra(
      extrasShortCode: elem.code,
      quantity: elem.amount,
      adr: elem.address ?? "",
    )).toList() ?? [];
    return PresentationBookingRequest(
      carId: carId,
      clientInfo: clientInfo,
      passportInfo: passport,
      dlInfo: driverLicense,
      extras: extras,
      flightNumber: flightNumberController.text,
      comments: commentController.text,
      newClient: newClient ?? 1,
    );
  }

  PresentationBookingOrgRequest getNewBookOrgRequest() {
    String carId = car?.id ?? "";
    PresentationClient clientInfo = PresentationClient(
      firstName: nameController.text,
      lastName: surnameController.text,
      patronymic: fromRussia ? patronymicController.text : "",
      phone: phoneController.text,
      email: emailController.text,
      country: fromRussia ?
      LocaleKeys.russia.tr() :
      passportCountryController.text,
      address: fromRussia ? registerAddressController.text : "",
      birthday: DateFormatter.toServerFromUser(birthDayController.text),
      clientId: idClient,
    );
    PresentationPassport passport = PresentationPassport(
      number: seriesAndNumberController.text,
      country: fromRussia ?
      LocaleKeys.russia.tr() :
      passportCountryController.text,
      issue: fromRussia ? issuePassportController.text : "",
      issueDate: DateFormatter.toServerFromUser(dateOfIssueController.text),
    );
    PresentationDriverLicense driverLicense = PresentationDriverLicense(
      number: driverSeriesAndNumberController.text,
      issueDate: DateFormatter.toServerFromUser(
        driverDateOfIssueController.text,
      ),
    );
    List<PresentationOrderExtra> extras = car
        ?.extras.map((elem) => PresentationOrderExtra(
      extrasShortCode: elem.code,
      quantity: elem.amount,
      adr: elem.address ?? "",
    )).toList() ?? [];
    return PresentationBookingOrgRequest(
      carId: carId,
      clientInfo: clientInfo,
      passportInfo: passport,
      dlInfo: driverLicense,
      extras: extras,
      flightNumber: flightNumberController.text,
      comments: commentController.text,
      newClient: newClient ?? 1,
      entityInfo: PresentationEntityInfo(
        fullTitle: organization?.data.name.fullWithOpf ?? "",
        shortTitle: organization?.data.name.shortWithOpf ?? "",
        tin: organization?.data.inn ?? "",
        psrn: organization?.data.ogrn ?? "",
        iec: organization?.data.kpp ?? "",
        phone: "",
        email: "",
        managerName: organization?.data.management?.name ?? "",
        managerPost: organization?.data.management?.post ?? "",
        legalAAddress: organization?.data.address.value ?? "",
        postalAddress: "",
      ),
    );
  }

  //Где-то
  void clearModel() {
    setStations(stations);
    searchForBooking = false;
    searchCars = null;
    car = null;
    startBookingDate = DateFormatter.strFromDate(DateTime.now());
    endBookingDate = DateFormatter.strFromDate(DateTime.now()
        .add(const Duration(days: 1, hours: 1)));
    sameLocationDropOff = true;
    startStation = null;
    endStation = null;
    tvPickUpLocationController.text = "";
    tvDropOffLocationController.text = "";
    surnameController.text = "";
    nameController.text = "";
    emailController.text = "";
    flightNumberController.text = "";
    commentController.text = "";
    readRentTerms = false;
    organizationRent = false;
    organizationController.text = "";
    organization = null;
    newClient = null;
    idClient = null;
    fromRussia = true;
    birthDayController.text = "";
    seriesAndNumberController.text = "";
    dateOfIssueController.text = "";
    driverSeriesAndNumberController.text = "";
    driverDateOfIssueController.text = "";
    phoneController.text = "";
    patronymicController.text = "";
    birthPlaceController.text = "";
    issuePassportController.text = "";
    registerAddressController.text = "";
    passportCountryController.text = "";
    bookResult = null;
  }
}