import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/header_title_widget.dart';

class RecommendedCardWidget extends StatelessWidget {
  const RecommendedCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppConstants.mediumGap,
        HeaderTitleWidget(title: "Recommended for you", btnTitle: "Show all"),
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: double.maxFinite,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildRecommendItem(context),
              _buildRecommendItem(context),
              
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRecommendItem(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
        color: AppConstants.whiteColor,
        elevation: 0.4,
        child: Row(
          children: [
              ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://uneno.madrasthemes.com/wp-content/uploads/2018/11/oegbyduUntitled-1.jpg",
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.width * 0.18,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pink winter jacket",
                    style: AppConstants.descriptionStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppConstants.brownColor,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "\$29.99",
                    style: AppConstants.descriptionStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppConstants.brownColor,
                      fontSize: AppConstants.heading1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
