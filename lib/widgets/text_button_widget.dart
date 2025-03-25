import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class TextButtonWidget extends StatelessWidget {
  final String btnTtitle;
  final Function() onPressed;

  const TextButtonWidget({super.key, required this.btnTtitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed, 
      child: Text(
        btnTtitle,
        style: TextStyle(
          fontSize: AppConstants.buttonFontSize
        ),
      )
    );
  }
}