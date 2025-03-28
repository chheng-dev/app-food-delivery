import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class HeaderTitleWidget extends StatelessWidget {
  final String title;
  const HeaderTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppConstants.titleStyle,
    );
  }
}