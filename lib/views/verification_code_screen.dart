import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/arrow_icon_back.dart';
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
      backgroundColor: AppConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: AppConstants.whiteColor,
        leading: ArrowIconBack(
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: AppConstants.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Verification Code", style: AppConstants.titleStyle),
              AppConstants.smallGap,
              Text("We sent verification code to your registered"),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Email ID"),
                    TextSpan(
                      text: " chheng@vtenh.com",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                )
              ),
              _buildVerificationForm(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildVerificationForm(BuildContext context) {
  return Column(
    children: [
      OtpCodeInputWidget(),
    ],
  );
}