import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/arrow_icon_back.dart';
import 'package:food_delivery/widgets/bg_image_widget.dart';
import 'package:food_delivery/widgets/header_title_widget.dart';
import 'package:food_delivery/widgets/otp_code_input_widget.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BgImageWidget(),
          ArrowIconBack(),
          HeaderTitleWidget(
            title: "Verification", 
            subTitle: "We have sent a code to your email"
          ),
          _buildVerificationForm(context),
        ],
      ),
    );
  }
}

Widget _buildVerificationForm(BuildContext context) {
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
        children: [
          OtpCodeInputWidget(),
        ],
      ),
    ),
  );
}