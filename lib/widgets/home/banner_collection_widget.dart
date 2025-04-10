import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class BannerCollectionWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  const BannerCollectionWidget({super.key, required this.imageUrl, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
     return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      padding: AppConstants.screenPadding.copyWith(top: AppConstants.margin2),
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: AppConstants.greyColor.withOpacity(0.2),
        borderRadius: BorderRadius.all(AppConstants.smallRaduis),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title.toUpperCase(),
                  style: AppConstants.title2Style.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppConstants.brownColor,
                  ),
                ),
                AppConstants.smallGap,
                Text(
                  subTitle.toUpperCase(),
                  style: AppConstants.titleStyle.copyWith(
                    fontWeight: FontWeight.normal,
                    color: AppConstants.brownColor,
                  ),
                ),
                AppConstants.smallGap,
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}