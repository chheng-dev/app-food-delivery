import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class ArrowIconBack extends StatelessWidget {
  final VoidCallback onPressed;
  const ArrowIconBack({super.key, required this.onPressed});

   Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onPressed();
      },
      icon: Icon(
        Platform.isIOS ? Icons.arrow_back_ios_new : Icons.arrow_back,
        color: AppConstants.blackColor, // Changed to blackColor
      ),
      iconSize: 20.0,
    );
  }
}