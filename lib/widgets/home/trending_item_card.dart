import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class TrendingItemCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String price;
  final String originalPrice;

  const TrendingItemCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.originalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: AppConstants.whiteColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionImage(imageUrl, context),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppConstants.title2Style,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  "\$$price",
                  style: TextStyle(
                    fontSize: AppConstants.heading2,
                    fontWeight: FontWeight.bold,
                    color: AppConstants.primaryColor,
                  ),
                ),
                if (originalPrice.isNotEmpty && originalPrice != price)
                  Text(
                    "\$$originalPrice",
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionImage(String imageUrl, BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: AppConstants.smallRaduis),
      child: Image.network(
        imageUrl,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.22,
        fit: BoxFit.cover,
        errorBuilder:
            (context, error, stackTrace) => Container(
              color: Colors.grey[300],
              height: MediaQuery.of(context).size.height * 0.22,
              child: const Icon(
                Icons.broken_image,
                size: 50,
                color: Colors.grey,
              ),
            ),
      ),
    );
  }
}
