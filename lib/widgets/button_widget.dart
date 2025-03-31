import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class ButtonWidget extends StatelessWidget {
  final String btnTtitle;
  final Function() onPressed;
  final bool? fullWidth;

  const ButtonWidget({super.key, required this.btnTtitle, required this.onPressed, this.fullWidth = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth! ? double.infinity : null,
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