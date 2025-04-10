import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/views/checkout_screen.dart';
import 'package:food_delivery/widgets/arrow_icon_back.dart';
import 'package:food_delivery/widgets/button_widget.dart';
import 'package:food_delivery/widgets/cart/cart_item_wdiget.dart';
import 'package:food_delivery/widgets/shipping_address_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Padding(
          padding: AppConstants.screenPadding,
          child: Column(
            children: [
              ShippingAddressWidget(),
              ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Wrap(
                    children: [
                      CartItemWdiget(), 
                      CartItemWdiget()
                    ],
                  )
                ],
              ),
              Spacer(),
              _buildTotalButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildTotalButton(BuildContext context) {
    return Row(
      children: [
        Text(
          "Total:",
          style: AppConstants.titleStyle,
        ),
        SizedBox(width: 8.0),
        Text(
          "\$244.00",
          style: AppConstants.titleStyle.copyWith(
            color: AppConstants.primaryColor
          ),
        ),
        Spacer(),
        Container(
          child: ButtonWidget(
            fullWidth: false,
            btnTtitle: "Checkout", 
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutScreen()),
              );
            }
          ),
        )
      ],
    );
  }

  AppBar _buildAppBar(context) {
    return AppBar(
      backgroundColor: AppConstants.whiteColor,
      leading: ArrowIconBack(
        onPressed: (){
        Navigator.pop(context);
      }),
      centerTitle: false,
      title: Text("Order Summary"),
    );
  }
}