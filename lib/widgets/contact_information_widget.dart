import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/button_widget.dart';
import 'package:food_delivery/widgets/op_phone_number_widget.dart';
import 'package:food_delivery/widgets/otp_code_input_widget.dart';
import 'package:food_delivery/widgets/text_form_field_widget.dart';

class ContactInformationWidget extends StatelessWidget {
  const ContactInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Text("Contact Infomation", style: AppConstants.title2Style),
              Text("+855-93-307-620"),
              Text("chheng@gmail.com"),
            ],
          ),
          IconButton.filled(
            style: IconButton.styleFrom(
              iconSize: 18,
              backgroundColor: AppConstants.primaryColor,
            ),
            onPressed: () {
              _editingContactInfoModal(context);
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }

  Future<void> _editingContactInfoModal(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45,
            padding: EdgeInsets.all(AppConstants.margin3),
            decoration: BoxDecoration(color: AppConstants.whiteColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contact Information", style: AppConstants.titleStyle),
                TextFormFieldWidget(
                  labelText: "Contact name",
                  hintText: "enter contact name",
                  keyboardType: TextInputType.text,
                  obscureText: false,
                ),
                TextFormFieldWidget(
                  labelText: "Email",
                  hintText: "example@gmail.com",
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                OpPhoneNumberWidget(
                  label: "Phone number",
                ),
                Spacer(),
                ButtonWidget(btnTtitle: "Save Changes", onPressed: () {}),
                AppConstants.mediumGap,
              ],
            ),
          ),
        );
      },
    );
  }
}