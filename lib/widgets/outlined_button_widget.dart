import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const OutlinedButtonWidget({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: AppConstants.primaryColor,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              AppConstants.smallRaduis
            )
          ),
          side: BorderSide(
            width: 1.0, 
            color: AppConstants.primaryColor
          ),
        ),
        onPressed: onPressed, 
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppConstants.buttonFontSize,
          ),
        )
      ),
    );
  }
}