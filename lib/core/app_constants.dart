import 'package:flutter/material.dart';

class AppConstants {
  // App Colors
  static const Color primaryColor = Color(0xFFFF7622);
  static const Color secondaryColor = Colors.grey;
  static const Color backgroundColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static const Color blueColor = Colors.blueAccent;
  static const Color successColor = Colors.green;
  static const Color greyColor = Colors.grey;
  static const Color dangerColor = Colors.red;

  static const EdgeInsets screenPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(
    vertical: 12,
    horizontal: 24,
  );

  // Margins
  static const EdgeInsets titleMargin = EdgeInsets.only(top: 20, bottom: 10);
  static const EdgeInsets descriptionMargin = EdgeInsets.only(bottom: 20);

  // Padding 
  static const double margin1 = 12.0;
  static const double margin2 = 14.0;
  static const double margin3 = 16.0;
  static const double margin4 = 18.0;
  static const double margin5 = 20.0;

  // SizedBox Heights
  static const SizedBox smallGap = SizedBox(height: 10);
  static const SizedBox mediumGap = SizedBox(height: 20);
  static const SizedBox largeGap = SizedBox(height: 40);

  // Font Sizes
  static const double titleFontSize = 24;
  static const double descriptionFontSize = 14;
  static const double buttonFontSize = 18;

  // Text Styles
  static const TextStyle titleStyle = TextStyle(
    fontSize: titleFontSize,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );

  static const TextStyle descriptionStyle = TextStyle(
    fontSize: descriptionFontSize,
    color: secondaryColor,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: buttonFontSize,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

}
