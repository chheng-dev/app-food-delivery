import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class SectionHeaderWidget extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final VoidCallback onPressedSeemore;

  const SectionHeaderWidget({super.key, required this.title, required this.onPressedSeemore, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppConstants.titleStyle),
        TextButton(
          onPressed: onPressedSeemore,
          child: Row(
            mainAxisSize:
                MainAxisSize
                    .min, // Ensures the row takes only as much space as needed
            children: [
              Text(buttonTitle),
              SizedBox(width: 4), // Adds a small gap between text and the icon
              Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.black54,
                size: 16,
              ),
            ],
          ),
          style: TextButton.styleFrom(
            minimumSize: Size.zero, // Removes the default padding/margin
            padding: EdgeInsets.zero,
            tapTargetSize:
                MaterialTapTargetSize
                    .shrinkWrap, // Shrinks the tap area to fit the content
          ),
        ),
      ],
    );
  }
}