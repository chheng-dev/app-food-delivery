import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/home/trending_item_card.dart';

class TrendingItemsCarousel extends StatelessWidget {
  final List<Map<String, String>> trendingItems;

  const TrendingItemsCarousel({super.key, required this.trendingItems});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: CarouselSlider.builder(
        itemCount: trendingItems.length,
        itemBuilder: (context, index, realIndex) {
          final item = trendingItems[index];
          return TrendingItemCard(
            title: item["title"] ?? "",
            description: item["description"] ?? "",
            imageUrl: item["image"] ?? "",
            price: item["price"] ?? "0",
            originalPrice: item["originalPrice"] ?? "0",
          );
        },
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.45,
          viewportFraction: 0.65,
          aspectRatio: 16 / 9,
          initialPage: 0,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlay: false,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollPhysics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
