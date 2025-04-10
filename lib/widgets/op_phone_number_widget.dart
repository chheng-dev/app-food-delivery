import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class OpPhoneNumberWidget extends StatelessWidget {
  final String isoCode = "KH";
  final PhoneNumber phoneNumber = PhoneNumber(
    isoCode: "KH",
  ); 
  final String label;

  OpPhoneNumberWidget({super.key, required this.label});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label, 
          style: AppConstants.title2Style
        ),
        AppConstants.smallGap,
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.margin1),
          decoration: BoxDecoration(
            color: AppConstants.secondaryColor,
            borderRadius: BorderRadius.all(AppConstants.smallRaduis),
          ),
          child: InternationalPhoneNumberInput(
            onInputChanged: (PhoneNumber number) {
              print(number.phoneNumber);
            },
            onInputValidated: (bool value) {
              print(value);
            },
            initialValue: phoneNumber,
            selectorConfig: SelectorConfig(
              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              useBottomSheetSafeArea: true,
            ),
            ignoreBlank: false,
            autoValidateMode: AutovalidateMode.disabled,
            selectorTextStyle: TextStyle(color: Colors.black),
            formatInput: true,
            keyboardType: TextInputType.phone,
            inputDecoration: InputDecoration(
              labelStyle: TextStyle(
                color: Colors.black54,
              ), 
              contentPadding: EdgeInsets.symmetric(
                vertical: 12,
              ), 
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: AppConstants.secondaryColor,
            ),
            onSaved: (PhoneNumber number) {
              print('On Saved: $number');
            },
          ),
        ),
      ],
    );
  }
}
