import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData? prefixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController? controller; // Added optional controller

  const TextFormFieldWidget({
    super.key,
    required this.labelText,
    required this.hintText,
    this.prefixIcon,
    required this.keyboardType,
    required this.obscureText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText, 
            style: AppConstants.title2Style
          ),
          const SizedBox(height: 4),
          Container(
            decoration: BoxDecoration(
              color: AppConstants.secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppConstants.descriptionStyle,
                prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
