import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/home/trending_slider_widget.dart';

class TrendingItemWidget extends StatelessWidget {
  const TrendingItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> trendingItems = [
      {
        "title": "Get winter ready",
        "description": "We help you to grow your",
        "image":
            "https://jthemes.net/themes/f-html/baby-store/assets/img/product/cat-7.png",
        "price": "80.00",
        "originalPrice": "99.00",
      },
      {
        "title": "Summer Collection",
        "description": "Stay cool in the summer heat",
        "image":
            "https://uneno.madrasthemes.com/wp-content/uploads/2018/12/login-image-min.png",
        "price": "50.00",
        "originalPrice": "60.00",
      },
      {
        "title": "New Fashion Trends",
        "description": "Trendy outfits for all seasons",
        "image":
            "https://uneno.madrasthemes.com/wp-content/uploads/2018/10/uneno-product-400x439.jpg",
        "price": "75.00",
        "originalPrice": "90.00",
      },
      {
        "title": "Spring Essentials",
        "description": "Blooming in style",
        "image":
            "https://static.vecteezy.com/system/resources/previews/047/394/332/non_2x/little-happy-child-kid-girl-in-casual-clothes-dancing-joyfully-isolated-on-a-transparent-background-free-png.png",
        "price": "45.00",
        "originalPrice": "55.00",
      },
      {
        "title": "Casual Weekend Wear",
        "description": "Perfect for your day off",
        "image":
            "https://static.vecteezy.com/system/resources/previews/047/394/332/non_2x/little-happy-child-kid-girl-in-casual-clothes-dancing-joyfully-isolated-on-a-transparent-background-free-png.png",
        "price": "60.00",
        "originalPrice": "70.00",
      },
      {
        "title": "Autumn Warmers",
        "description": "Stay warm in style",
        "image":
            "https://static.vecteezy.com/system/resources/previews/047/394/332/non_2x/little-happy-child-kid-girl-in-casual-clothes-dancing-joyfully-isolated-on-a-transparent-background-free-png.png",
        "price": "90.00",
        "originalPrice": "110.00",
      },
    ];

    return Wrap(
      children: [
        TrendingItemsCarousel(trendingItems: trendingItems),
      ],
    );
  }
}