import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final bool obscureText;

  const TextFormFieldWidget({super.key, required this.labelText, required this.prefixIcon, required this.keyboardType, required this.obscureText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppConstants.greyColor, // Change the color here
          ),
          prefixIcon: Icon(
            prefixIcon,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      )
    );
  }
}