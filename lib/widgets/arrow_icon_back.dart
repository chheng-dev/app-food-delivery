import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/icon_socail_widget.dart';

class ArrowIconBack extends StatelessWidget {
  const ArrowIconBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top + 20.0,
      left: 16.0,
      child: IconSocailWidget(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Platform.isIOS ? Icons.arrow_back_ios_new : Icons.arrow_back,
        color: AppConstants.whiteColor,
        iconColor: AppConstants.blackColor,
        size: 20.0,
      ),
    );
  }
}