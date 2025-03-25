import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/models/slide_model.dart';

class SlideWidget extends StatelessWidget {
    final SlideModel slide;

  const SlideWidget({super.key, required this.slide});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(slide.imageUrl, height: 300),
          SizedBox(height: 20),
          Text(
            slide.title,
            style: TextStyle(
              fontSize: AppConstants.titleFontSize, 
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10),

          Text(
            slide.description, 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppConstants.descriptionFontSize,
              fontWeight: FontWeight.normal,
              color: Colors.grey
            ),
          ),
        ],
      ),
    );
  }
}