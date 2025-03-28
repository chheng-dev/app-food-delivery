import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/icon_socail_widget.dart';

class ArrowIconBack extends StatelessWidget {
  const ArrowIconBack({super.key});

  @override
  Widget build(BuildContext context) {
    return IconSocailWidget(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Platform.isIOS ? Icons.arrow_back_ios_new : Icons.arrow_back,
      color: AppConstants.whiteColor,
      iconColor: AppConstants.blackColor,
      size: 20.0,
    );
  }
}