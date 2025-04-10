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
  
  Future<void> _editingShippingAddressModal(BuildContext context) async {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding( 
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom, 
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.6,
                padding: EdgeInsets.all(AppConstants.margin3),
                margin: EdgeInsets.only(bottom: AppConstants.margin4),
                decoration: BoxDecoration(color: AppConstants.whiteColor),
                child: SingleChildScrollView( 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shipping Address",
                        style: AppConstants.titleStyle,
                      ),
                      AppConstants.mediumGap, 
                      TextFormFieldWidget(
                        labelText: "Country",
                        hintText: "",
                        keyboardType: TextInputType.text,
                        obscureText: false,
                      ),
                      AppConstants.mediumGap,
                      TextFormFieldWidget(
                        labelText: "Address",
                        hintText: "",
                        keyboardType: TextInputType.streetAddress,
                        obscureText: false,
                      ),
                      AppConstants.mediumGap,
                      TextFormFieldWidget(
                        labelText: "Town/City",
                        hintText: "",
                        keyboardType: TextInputType.text,
                        obscureText: false,
                      ),
                      AppConstants.mediumGap,
                      TextFormFieldWidget(
                        labelText: "Postcode",
                        hintText: "",
                        keyboardType: TextInputType.number,
                        obscureText: false,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppConstants.margin2
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: AppConstants.margin2
                  ),
                  child: ButtonWidget(
                    btnTtitle: "Save Changes",
                    onPressed: () {
                      Navigator.pop(context); 
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

}