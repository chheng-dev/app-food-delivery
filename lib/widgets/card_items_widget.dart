import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/views/item_detail_screen.dart';

class CardItemsWidget extends StatelessWidget {
  const CardItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      margin: EdgeInsets.symmetric(vertical: AppConstants.margin1),
      decoration: BoxDecoration(
        color: AppConstants.secondaryColor,
        borderRadius: BorderRadius.all(AppConstants.smallRaduis),
      ),
      child: Stack(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (_) => ItemDetailScreen())
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildImage(context),
                _buildSectionTitle(),
              ],
            ),
          ),
          _buildDiscountSection(),
          _buildFavoriteIcon()
        ],
      ),
    );
  }

  Positioned _buildDiscountSection() {
    return Positioned(
      top: 15.0,
      left: 0,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 6.0,
          vertical: 4.0
        ),
        decoration: BoxDecoration(
          color: AppConstants.brownColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(4.0),
            bottomRight: Radius.circular(4.0)
          )
        ),
        child: Text(
          "50% off",
          style: TextStyle(
            color: AppConstants.whiteColor
          ),
        )
      ),
    );
  }

  Positioned _buildFavoriteIcon() {
    return Positioned(
      top: 10.0,
      right: 10.0,
      child: IconButton.filled(
        onPressed: (){}, 
        icon: Icon(
          Icons.favorite_border,
          color: AppConstants.blackColor,
          size: 18,
        ),
        style: ButtonStyle(
          // ignore: deprecated_member_use
          backgroundColor: WidgetStateProperty.all(AppConstants.whiteColor.withOpacity(0.7)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                AppConstants.smallRaduis
              )
            )
          )
        ),
      ),
    );
  }

  Padding _buildSectionTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.margin1
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Item Title", style: AppConstants.title2Style),
          Text(
            "Item description goes here.",
            style: TextStyle(
              fontSize: AppConstants.heading4,
            ),
          ),
          Row(
            children: [
              Text(
                "\$80.00",
                style: TextStyle(
                  fontSize: AppConstants.heading1,
                  fontWeight: FontWeight.w700
                )
              ),
              SizedBox(width: 8.0),
              Text(
                "\$99.00",
                style: TextStyle(
                  color: AppConstants.greyColor,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: AppConstants.greyColor
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  ClipRRect _buildImage(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: AppConstants.smallRaduis),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            AppConstants.smallRaduis
          ),
          child: Image.network(
            "https://www.dhresource.com/webp/m/0x0/f2/albu/g20/M01/0E/A7/rBNaOGCxzrqAV34FAADeajIWT9Y408.jpg",
            height: MediaQuery.of(context).size.height * 0.15,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
