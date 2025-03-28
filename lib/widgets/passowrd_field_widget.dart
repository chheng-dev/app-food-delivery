import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class PasswordFieldWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData? prefixIcon;
  final bool obscureText;
  final VoidCallback onPressed;
  final TextInputType keyboardType;

  const PasswordFieldWidget({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.prefixIcon,
    required this.obscureText,
    required this.onPressed,
    required this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style:
              AppConstants
                  .title2Style, // Assuming AppConstants has the proper style
        ),
        const SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
            color: AppConstants.secondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle:
                  AppConstants
                      .descriptionStyle, // Assuming AppConstants has a description style
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              suffixIcon: IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: onPressed, // Handling visibility toggle
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
