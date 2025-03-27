import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/providers/otp_provider.dart';
import 'package:food_delivery/widgets/button_widget.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';

class OtpCodeInputWidget extends StatefulWidget {
  const OtpCodeInputWidget({super.key});

  @override
  State<OtpCodeInputWidget> createState() => _OtpCodeInputWidgetState();
}

class _OtpCodeInputWidgetState extends State<OtpCodeInputWidget> {
  @override
  Widget build(BuildContext context) {
    final otpProvider  = Provider.of<OtpProvider>(context, listen: false);

    return Column(
      children: [
        AppConstants.mediumGap,
        const Text(
          "Enter the 6-digit verification code",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        AppConstants.mediumGap,
        OTPTextField(
          contentPadding: EdgeInsets.zero,
          length: 6,
          width: MediaQuery.of(context).size.width,
          fieldWidth: 40,
          style: TextStyle(fontSize: AppConstants.descriptionFontSize),
          textFieldAlignment: MainAxisAlignment.spaceEvenly,
          fieldStyle: FieldStyle.box,
          onChanged: otpProvider.updateOtp,
          onCompleted: otpProvider.updateOtp,
        ), 
        AppConstants.smallGap,   
        _buildCountdownTimer(context),
        _buildResendCode(context),
        AppConstants.smallGap,
        ButtonWidget(
          btnTtitle: "VERIFY", 
          onPressed: otpProvider.verfifyCode,
        )
      ],
    );
  }
}

Widget _buildResendCode(BuildContext context) {
  return Consumer<OtpProvider>(
    builder: (context, otpProvider, child) {
      return TextButton(
        onPressed: otpProvider.canResend ? otpProvider.resendCode : null, 
        child: Text(
          "Resend code",
          style: TextStyle(
            color: otpProvider.canResend ? AppConstants.primaryColor : AppConstants.backgroundColor,
            fontSize: 16,
          ),
        )
      );
    },
  );
}

Widget _buildCountdownTimer(BuildContext context){
  return Consumer<OtpProvider>(
    builder: (context, otpProvider, child) {
      return Text(
        otpProvider.canResend
        ? "You can request a new code"
        : "Resend in ${otpProvider.countdown}sec",
                          style: TextStyle(
        color: otpProvider.canResend ? AppConstants.secondaryColor : AppConstants.dangerColor,
        ),
      );
    }
  );
}
