import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class HeaderTitleWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const HeaderTitleWidget({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 140.0,
      left: 0.0,
      right: 0.0,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: AppConstants.titleFontSize,
                  fontWeight: FontWeight.bold,
                  color: AppConstants.whiteColor,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: AppConstants.descriptionFontSize,
                  color: AppConstants.backgroundColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}