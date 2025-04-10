import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/banner_widget.dart';
import 'package:food_delivery/widgets/header_title_widget.dart';
import 'package:food_delivery/widgets/home/banner_collection_widget.dart';
import 'package:food_delivery/widgets/home/feature_product_widget.dart';
import 'package:food_delivery/widgets/home/recommended_card_widget.dart';

class WomenTabWdiget extends StatelessWidget {
  const WomenTabWdiget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        BannerSliderWidget(),
        AppConstants.smallGap,
        _buildFeatureProductSection(),
        AppConstants.mediumGap,
        BannerCollectionWidget(
          imageUrl: "https://uneno.madrasthemes.com/wp-content/uploads/revslider/home-v1-hero-slider/boy.png", 
          title: "I NEW COLLECTION", 
          subTitle: "Hang out & party",
        ),
        RecommendedCardWidget(), 
        _buildTopCollection(context),
      ],
    );
  }

  Column _buildTopCollection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppConstants.smallGap,
        const HeaderTitleWidget(title: "Top Collection", btnTitle: "Show all"),
        BannerCollectionWidget(
          imageUrl:
              "https://uneno.madrasthemes.com/wp-content/uploads/revslider/home-v1-hero-slider/boy.png",
          title: "I sale up 40% off",
          subTitle: "For slim & Beauty",
        ),
        AppConstants.smallGap,
        BannerCollectionWidget(
          imageUrl:
              "https://uneno.madrasthemes.com/wp-content/uploads/revslider/home-v1-hero-slider/boy.png",
          title: "I sale collection 2025",
          subTitle: "More sexy & fabulous design",
        ),
      ],
    );
  }

  Column _buildFeatureProductSection() {
    final List<Map<String, String>> featureProducts = [
      {
        "title": "Pink winter jacket",
        "imageUrl":
            "https://img.kwcdn.com/product/fancy/3d6b4fb6-546e-4055-a749-1abb989e215c.jpg",
        "price": "50.00"
      },
      {
        "title": "Blue denim jacket",
        "imageUrl":
            "https://img.kwcdn.com/product/fancy/3d6b4fb6-546e-4055-a749-1abb989e215c.jpg",
        "price": "60.00"
      },
      {
        "title": "Blue denim jacket",
        "imageUrl":
            "https://img.kwcdn.com/product/fancy/3d6b4fb6-546e-4055-a749-1abb989e215c.jpg",
        "price": "60.00",
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderTitleWidget(title: "Feature Products", btnTitle: "Show all"),
        AppConstants.smallGap,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              featureProducts.length,
              (index) {
                final item = featureProducts[index];
                final title = item["title"] ?? "";
                final imageUrl = item["imageUrl"] ?? "";
                final price = item["price"] ?? "0";
                return Padding(
                  padding: EdgeInsets.only(
                    right:
                        index == featureProducts.length - 1
                            ? 0
                            : AppConstants.margin1, 
                  ),
                  child: FeatureProductWidget(
                    title: title,
                    imageUrl: imageUrl,
                    price: price,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}