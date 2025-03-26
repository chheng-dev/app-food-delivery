import 'package:flutter/material.dart';

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
          prefixIcon: Icon(
            prefixIcon,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          //   borderSide: BorderSide(
          //     color: AppConstants.primaryColor,
          //     width: 2,
          //   ),
          // ),
        ),
      )
    );
  }
}