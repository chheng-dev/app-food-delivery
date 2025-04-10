import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/arrow_icon_back.dart';
import 'package:food_delivery/widgets/contact_information_widget.dart';
import 'package:food_delivery/widgets/shipping_address_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ArrowIconBack(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Order Summary",
          style: AppConstants.titleStyle,
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: AppConstants.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppConstants.smallGap,
              ShippingAddressWidget(),
              AppConstants.smallGap,
              ContactInformationWidget(),
              AppConstants.mediumGap,
              Text("Your order", style: AppConstants.titleStyle,)
            ],
          ),
        ),
      ),
    );
  }
}