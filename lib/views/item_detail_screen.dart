import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/arrow_icon_back.dart'; 
import 'package:food_delivery/widgets/button_widget.dart';
import 'package:food_delivery/widgets/outlined_button_widget.dart';

class ItemDetailScreen extends StatefulWidget {
  const ItemDetailScreen({super.key});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  final List<String> images = [
    'https://www.fancydresswale.com/cdn/shop/products/BABYROMP-YELLOW-2_1024x1024.jpg?v\u003d1647434967',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBfLk9lMUdmNyiWIAEKyPf3ulp3iL1CkaEAw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVocEcoKm0ETen4dodJ8PgEoAUt60sWw-e3iytlFJlL0GE7FjpKp1wZRNiSsMtF7l0aUQ&usqp=CAU',
    'https://filebroker-cdn.lazada.com.my/kf/Sac118afb1f55407b989394fa1e49d932K.jpg',
  ];

  String selectedImage =
      'https://img.kwcdn.com/product/fancy/3d6b4fb6-546e-4055-a749-1abb989e215c.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Padding(
          padding: AppConstants.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderImage(context),
              Text(
                "Pink winter jacket",
                style: AppConstants.titleStyle,
              ),
              AppConstants.smallGap,
              _buildSectionPrice(),
              AppConstants.smallGap,
              Text(
                "Maximum Retail Price (MRP) inclusive of all taxes. Prices are subject to availability and may vary based on location and stock.",
                style: AppConstants.descriptionStyle,
              ),
              Spacer(),
              _buildSectionButton()
            ],
          ),
        ),
      ),
    );
  }

  Stack _buildHeaderImage(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: AppConstants.margin2),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: ClipRRect(
            borderRadius: BorderRadius.all(AppConstants.smallRaduis),
            child: Image.network(
              selectedImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        _buildImageSeeMore(),
      ],
    );
  }

  Positioned _buildImageSeeMore() {
    return Positioned(
      bottom: 20.0,
      left: 0,
      right: 0,
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                images.map((imageUrl) {
                  final bool isActive =
                      selectedImage == imageUrl; 
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedImage = imageUrl; 
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                            isActive
                                ? AppConstants
                                    .primaryColor 
                                : Colors.transparent,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(
                        AppConstants.smallRaduis,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        AppConstants.smallRaduis
                      ),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppConstants.whiteColor,
      leading: ArrowIconBack(
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.share)),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
      ],
    );
  }

  Row _buildSectionButton() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: OutlinedButtonWidget(
            title: 'Add to wishlist',
            onPressed: () {},
          ),
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: ButtonWidget(
            btnTtitle: "Add to cart",
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Row _buildSectionPrice() {
    return Row(
      children: [
        Text(
          "\$122.00",
          style: AppConstants.titleStyle,
        ),
        SizedBox(width: 8.0),
        Text(
          "\$222.00",
          style: TextStyle(
            color: AppConstants.greyColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.lineThrough,
            decorationColor: AppConstants.greyColor,
          ),
        ),
        SizedBox(width: 8.0),
        Text(
          "50% off",
          style: TextStyle(
            color: AppConstants.dangerColor,
          ),
        ),
      ],
    );
  }
}