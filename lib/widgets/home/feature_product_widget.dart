import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class FeatureProductWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String price;

  const FeatureProductWidget({
    super.key, 
    required this.title, 
    required this.imageUrl, 
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(AppConstants.smallRaduis),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
          ),
          AppConstants.smallGap,
          Text(
            title,
            style: AppConstants.title2Style.copyWith(
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Text(
            "\$${price}",
            style: TextStyle(
              fontSize: AppConstants.heading2,
              fontWeight: FontWeight.bold,
              color: AppConstants.primaryColor,
            ),
          ),
        ],
      ),    
    );
  }
}