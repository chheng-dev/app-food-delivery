import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class PassowrdFieldWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final VoidCallback onPressed;
  final TextInputType keyboardType;

  const PassowrdFieldWidget({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon, 
    required this.obscureText, required this.onPressed, required this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppConstants.greyColor, // Change the color here
          ),
          prefixIcon: Icon(
            prefixIcon,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: onPressed,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}