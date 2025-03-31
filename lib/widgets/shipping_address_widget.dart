import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/button_widget.dart';
import 'package:food_delivery/widgets/text_form_field_widget.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppConstants.margin1),
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: AppConstants.greyColor.withOpacity(0.2),
        borderRadius: BorderRadius.all(AppConstants.smallRaduis),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shipping Address",
                style: TextStyle(
                  fontSize: AppConstants.heading2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Virak Buntham Express Headquarters",
                style: TextStyle(fontSize: AppConstants.heading4),
              ),
            ],
          ),
          IconButton.filled(
            style: IconButton.styleFrom(
              iconSize: 18,
              backgroundColor: AppConstants.primaryColor,
            ),
            onPressed: (){
              _editingShippingAddressModal(context);
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
  
  Future<void> _editingShippingAddressModal(BuildContext context){
    return showModalBottomSheet(
      context: context, 
      builder: (context) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(
            AppConstants.margin3
          ),
          decoration: BoxDecoration(
            color: AppConstants.whiteColor
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shipping Address",
                style: AppConstants.titleStyle,
              ),
              TextFormFieldWidget(
                labelText: "Country", 
                hintText: "", 
                keyboardType: TextInputType.text, 
                obscureText: false
              ),
              TextFormFieldWidget(
                labelText: "Address",
                hintText: "",
                keyboardType: TextInputType.streetAddress,
                obscureText: false,
              ),
              TextFormFieldWidget(
                labelText: "Town/City",
                hintText: "",
                keyboardType: TextInputType.text,
                obscureText: false,
              ),
              TextFormFieldWidget(
                labelText: "Postcode",
                hintText: "",
                keyboardType: TextInputType.number,
                obscureText: false,
              ),
              Spacer(),
              ButtonWidget(
                btnTtitle: "Save Changes", 
                onPressed: (){}
              ),
              AppConstants.mediumGap,
            ],
          ),
        );
      }
    );
  }
}