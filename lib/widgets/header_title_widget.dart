import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class HeaderTitleWidget extends StatelessWidget {
  final String title;
  final String? btnTitle;
  const HeaderTitleWidget({super.key, required this.title, this.btnTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppConstants.titleStyle,
        ),
        if(btnTitle != null)
          TextButton(onPressed: () {}, child: Text(btnTitle!))
      ],
    );
  }
}