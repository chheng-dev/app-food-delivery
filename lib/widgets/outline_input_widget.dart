import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class OutlineInputWidget extends StatelessWidget {
  final IconData icon;
  final ValueChanged onChanged;
  final String hintText;
  final IconData? suffixIcon;

  const OutlineInputWidget({super.key, required this.icon, required this.onChanged, required this.hintText, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConstants.secondaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: AppConstants.blackColor,
          ),
          suffixIcon: suffixIcon != null ? Icon(
            suffixIcon, color: AppConstants.blackColor) : null,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(vertical: 12),
        ),
      ),
    );
  }
}