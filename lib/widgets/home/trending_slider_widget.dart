import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/home/trending_item_card.dart';

class TrendingItemsCarousel extends StatelessWidget {
  final List<Map<String, String>> trendingItems;
  const TrendingItemsCarousel({super.key, required this.trendingItems});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: trendingItems.map((item) {
        return TrendingItemCard(
          title: item["title"]!,
          description: item["description"]!,
          imageUrl: item["image"]!,
          price: item["price"]!, // This can be dynamic
          originalPrice: item["originalPrice"]!, // This can be dynamic
        );
      }).toList(),
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.14,
        viewportFraction: 0.9,
        aspectRatio: 2.0,
        initialPage: 0,
        enlargeCenterPage: false,
        enableInfiniteScroll: true,
        autoPlay: false,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}