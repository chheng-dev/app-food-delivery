import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class BannerSliderWidget extends StatefulWidget {
  @override
  _BannerSliderWidgetState createState() => _BannerSliderWidgetState();
}

class _BannerSliderWidgetState extends State<BannerSliderWidget> {
  int _currentIndex = 0;

  final List<Map<String, String>> banners = [
    {
      "title1": "Get winter ready",
      "title2": "Clothes for baby",
      "description": "We help you to grow your",
      "image":
          "https://static.vecteezy.com/system/resources/previews/047/394/332/non_2x/little-happy-child-kid-girl-in-casual-clothes-dancing-joyfully-isolated-on-a-transparent-background-free-png.png",
    },
    {
      "title1": "Summer Collection",
      "title2": "Light & Breezy",
      "description": "Stay cool in the summer heat",
      "image":
          "https://static.vecteezy.com/system/resources/previews/047/394/332/non_2x/little-happy-child-kid-girl-in-casual-clothes-dancing-joyfully-isolated-on-a-transparent-background-free-png.png",
    },
    {
      "title1": "New Fashion Trends",
      "title2": "Latest Styles",
      "description": "Trendy outfits for all seasons",
      "image":
          "https://static.vecteezy.com/system/resources/previews/047/394/332/non_2x/little-happy-child-kid-girl-in-casual-clothes-dancing-joyfully-isolated-on-a-transparent-background-free-png.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items:
              banners.map((banner) {
                return Container(
                  width: double.infinity,
                  height: 200.0,
                  padding: EdgeInsets.all(AppConstants.margin2),
                  decoration: BoxDecoration(
                    color: AppConstants.secondaryColor,
                    borderRadius: BorderRadius.all(AppConstants.smallRaduis),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5, 
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              banner["title1"]!,
                              style: AppConstants.titleStyle,
                            ),
                            Text(
                              banner["title2"]!,
                              style: TextStyle(
                                fontSize: AppConstants.heading2
                              ),
                            ),
                            AppConstants.smallGap,
                            Text(banner["description"]!),
                            AppConstants.smallGap,
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: AppConstants.brownColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)
                                )
                              ),
                              onPressed: () {},
                              child: Text(
                                "Shop now",
                                style: TextStyle(color: AppConstants.whiteColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.network(
                        banner["image"]!,
                        width: MediaQuery.of(context).size.width * 0.3, 
                      ),
                    ],
                  ),
                );
              }).toList(),
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              banners.asMap().entries.map((entry) {
                return Container(
                  width: _currentIndex == entry.key ? 12.0 : 8.0,
                  height: _currentIndex == entry.key ? 12.0 : 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        _currentIndex == entry.key
                            ? AppConstants.primaryColor
                            : AppConstants.greyColor,
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}
