import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/views/verification_code_screen.dart';
import 'package:food_delivery/widgets/arrow_icon_back.dart';
import 'package:food_delivery/widgets/button_widget.dart';
import 'package:food_delivery/widgets/text_form_field_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: AppConstants.whiteColor,
        leading: ArrowIconBack(
          onPressed: (){},
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: AppConstants.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Forgot Password", style: AppConstants.titleStyle),
              AppConstants.smallGap,
              Text(
                "Enter the registered email or phone number and we'll send you instructions to get your password",
                style: AppConstants.descriptionStyle,
              ),
              _buildRegisterForm(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildRegisterForm(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      AppConstants.largeGap,
       TextFormFieldWidget(
        labelText: "Email id/ Mobile no",
        hintText: "example@gmail.com",
        keyboardType: TextInputType.emailAddress,
        obscureText: false,
      ),
      AppConstants.mediumGap,
      ButtonWidget(
        btnTtitle: "Send", 
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VerificationCodeScreen()),
          );
        }
      ),
    ],
  );
}