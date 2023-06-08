import 'package:flutter/material.dart';

class PageViewModel {
  int bottomIndex = 0;
  int selectedIndex = 0;
  int currentTwoIndex = 1;
  bool listSelected = false;
  PageController pageController = PageController(initialPage: 0);

  void setIndex(int index) {
    selectedIndex = index;
    if (index > 2) {
      bottomIndex = 1;
    } else {
      bottomIndex = index;
    }
  }
}