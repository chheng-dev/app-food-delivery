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
          "https://parkofideas.com/kidz/demo2/wp-content/uploads/2016/10/clothes-0815085765.jpg",
    },
    {
      "title1": "Summer Collection",
      "title2": "Light & Breezy",
      "description": "Stay cool in the summer heat",
      "image":
          "https://parkofideas.com/kidz/demo2/wp-content/uploads/2016/10/clothes-2104572517.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items:
              banners.map((banner) {
                return Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: AppConstants.secondaryColor,
                    borderRadius: BorderRadius.all(AppConstants.smallRaduis),
                  ),
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              AppConstants.smallRaduis,
                            ),
                            image: DecorationImage(
                              image: NetworkImage(banner["image"]!),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              // Positioned text section
                              Positioned(
                                bottom:
                                    20, // Bottom position for better spacing
                                left: 16, // Padding for the left side
                                right: 16, // Padding for the right side
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        banner["title1"]!,
                                        style: AppConstants.titleStyle.copyWith(
                                          color:
                                              Colors
                                                  .white, 
                                          fontSize:
                                              24, 
                                          fontWeight:
                                              FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ), 
                                      Text(
                                        banner["title2"]!,
                                        style: AppConstants.titleStyle.copyWith(
                                          color:
                                              Colors
                                                  .white, 
                                          fontSize: 18, 
                                          fontWeight:
                                              FontWeight
                                                  .normal, 
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(
                                    0.1,
                                  ), // Increased opacity for better contrast
                                  borderRadius: BorderRadius.all(
                                    AppConstants.smallRaduis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
              banners.asMap().entries.map((entry) {
                return Container(
                  alignment: Alignment.center,
                  width: _currentIndex == entry.key ? 12.0 : 8.0,
                  height: _currentIndex == entry.key ? 12.0 : 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        _currentIndex == entry.key
                            ? AppConstants.whiteColor
                            : AppConstants.greyColor,
                  ),
                );
              }).toList(),
          ),
        )
      ],
    );
  }
}
