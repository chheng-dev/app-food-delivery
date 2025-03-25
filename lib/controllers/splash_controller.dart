import 'package:flutter/material.dart';
import 'package:food_delivery/models/slide_model.dart';

class SplashController extends ChangeNotifier {
  int currentIndex = 0;
  PageController pageController = PageController();

  void nextSlide() {
    if(currentIndex < slideList.length - 1) {
      currentIndex++;
      pageController.animateToPage(
        currentIndex,
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      );
      notifyListeners();
    }
  }

  void onPageChanged(int index) {
    currentIndex = index;
    notifyListeners();
  }
}