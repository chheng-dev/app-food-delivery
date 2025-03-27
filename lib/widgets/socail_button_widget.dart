import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class SocailButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const SocailButtonWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(AppConstants.margin1),
        decoration: BoxDecoration(
          border: Border.all(color: AppConstants.greyColor),
          borderRadius: BorderRadius.circular(12),
          color: AppConstants.secondaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(width: 8.0),
            Text(
              title,
              style: TextStyle(
                fontSize: AppConstants.descriptionFontSize
              ),
            )
          ],
        ),
      ),
    );
  }
}