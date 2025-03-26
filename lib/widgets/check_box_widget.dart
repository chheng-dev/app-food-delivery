import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class CheckBoxWidget extends StatelessWidget {
  final String title;
  final ValueChanged<bool> onChanged;
  
  const CheckBoxWidget({super.key, required this.title, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: false,
          onChanged: (newValue) => onChanged,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: AppConstants.descriptionFontSize,
            color: AppConstants.secondaryColor
          ), 
        ),
      ],
    );
  }
}