import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/banner_widget.dart';
import 'package:food_delivery/widgets/card_items_widget.dart';
import 'package:food_delivery/widgets/header_title_widget.dart';
import 'package:food_delivery/widgets/outline_input_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: AppConstants.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppBar(),
              OutlineInputWidget(
                icon: Icons.search_sharp,
                suffixIcon: Icons.mic_rounded,
                onChanged: (value) {
                  print(value);
                },
                hintText: 'Search dishes, restaurants',
              ),
              AppConstants.mediumGap,
              BannerSliderWidget(),
              AppConstants.mediumGap,
              HeaderTitleWidget(title: "Shop by category"),
              Row(
                children: [
                  Expanded(
                    child: CardItemsWidget()
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: CardItemsWidget()
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Row _buildAppBar() {
    return Row(
      children: [
        Ink(
          decoration: ShapeDecoration(
            color: AppConstants.whiteColor,
            shape: CircleBorder(),
          ),
          child: IconButton(icon: Icon(Icons.menu_sharp), onPressed: () {}),
        ),
        Expanded(
          child: ListTile(
            title: Text(
              "Delivery To",
              style: TextStyle(
                color: AppConstants.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Vtenh, Office"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.notifications_active_rounded),
          onPressed: () {},
        ),
      ],
    );
  }
}