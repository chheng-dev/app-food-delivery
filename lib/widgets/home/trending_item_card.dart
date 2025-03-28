import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class TrendingItemCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String price;
  final String originalPrice;

  const TrendingItemCard({super.key, required this.title, required this.description, required this.imageUrl, required this.price, required this.originalPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: AppConstants.margin1,
        bottom: AppConstants.margin1,
        right: AppConstants.margin1,
      ),
      decoration: BoxDecoration(
        color: AppConstants.secondaryColor,
        borderRadius: BorderRadius.all(AppConstants.smallRaduis),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            _buildSectionImage(imageUrl),
            SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppConstants.title2Style,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: AppConstants.heading4,
                    color: AppConstants.greyColor
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "\$${price}",
                      style: TextStyle(
                        fontSize: AppConstants.heading1,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "\$${originalPrice}",
                      style: TextStyle(
                        color: AppConstants.greyColor,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: AppConstants.greyColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  ClipRRect _buildSectionImage(String imageUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        AppConstants.smallRaduis
      ),
      child: Image.network(imageUrl)
    );
  }
}