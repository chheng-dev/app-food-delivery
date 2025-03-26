import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/views/verification_code_screen.dart';
import 'package:food_delivery/widgets/arrow_icon_back.dart';
import 'package:food_delivery/widgets/bg_image_widget.dart';
import 'package:food_delivery/widgets/button_widget.dart';
import 'package:food_delivery/widgets/header_title_widget.dart';
import 'package:food_delivery/widgets/text_form_field_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BgImageWidget(),
          ArrowIconBack(),
          HeaderTitleWidget(
            title: 'Forgot Password',
            subTitle: 'Plase sign in to your exiting account',
          ),
          _buildRegisterForm(context),
        ],
      ),
    );
  }
}

Widget _buildRegisterForm(BuildContext context) {
  return Positioned(
    bottom: 0.0,
    left: 0.0,
    right: 0.0,
    child: Container(
      height: MediaQuery.of(context).size.height * 0.7,
      padding: AppConstants.screenPadding,
      decoration: BoxDecoration(
        color: AppConstants.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppConstants.largeGap,
          TextFormFieldWidget(
            labelText: "Email",
            hintText: "example@gmail.com",
            prefixIcon: Icons.email,
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
          ),
          AppConstants.mediumGap,
          ButtonWidget(
            btnTtitle: "SEND CODE", 
            onPressed: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (_) => VerificationCodeScreen()),
              );
            }
          ),
        ],
      ),
    ),
  );
}