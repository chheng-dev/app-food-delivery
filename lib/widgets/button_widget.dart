import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class ButtonWidget extends StatelessWidget {
  final String btnTtitle;
  final Function() onPressed;

  const ButtonWidget({super.key, required this.btnTtitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppConstants.primaryColor,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          btnTtitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppConstants.buttonFontSize,
          ),
        ),
      ),
    );
  }
}