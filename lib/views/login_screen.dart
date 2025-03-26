import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/views/forgot_password_screen.dart';
import 'package:food_delivery/widgets/bg_image_widget.dart';
import 'package:food_delivery/widgets/button_widget.dart';
import 'package:food_delivery/widgets/check_box_widget.dart';
import 'package:food_delivery/widgets/header_title_widget.dart';
import 'package:food_delivery/widgets/icon_socail_widget.dart';
import 'package:food_delivery/widgets/text_button_widget.dart';
import 'package:food_delivery/widgets/text_form_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BgImageWidget(),
          HeaderTitleWidget(title: "Login", subTitle: "Please sign in to your existing account"),
          _buildLoginForm(context),
        ],
      ),
    );
  }
}

Widget _buildLoginForm(BuildContext context) {
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
            obscureText: false
          ),
          TextFormFieldWidget(
            labelText: "Password",
            hintText: "Enter your password",
            prefixIcon: Icons.lock,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
          ),
          _buildRemmeber(context),
          AppConstants.mediumGap,
          ButtonWidget(btnTtitle: "LOGIN", onPressed: (){}),
          AppConstants.mediumGap,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              SizedBox(width: 6),
              Text("SIGN UP", style: TextStyle(
                color: AppConstants.primaryColor,
                fontWeight: FontWeight.bold
              ))
            ],
          ),
          AppConstants.mediumGap,
          Align(
            alignment: Alignment.center,
            child: Text(
              "Or",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppConstants.secondaryColor
              ),
            ),
          ),
          AppConstants.mediumGap,
         _buildIconSocailSection(context)
        ],
      ),
    ),
  );
}

Row _buildIconSocailSection(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
       IconSocailWidget(
        icon: Icons.facebook_rounded,
        color: AppConstants.blueColor,
        size: 50
      ),
      IconSocailWidget(
        icon: Icons.email,
        color: AppConstants.blueColor,
        size: 50,
      ),
      IconSocailWidget(
        icon: Icons.apple_sharp,
        color: AppConstants.blackColor,
        size: 50,
      )
    ],
  );
}

Row _buildRemmeber(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CheckBoxWidget(
        title: "Remmeber me",
        onChanged: (value){},
      ),
      TextButtonWidget(
        btnTtitle: "Forgot password", 
        onPressed: (){
           Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => ForgotPasswordScreen()),
          );
        },
        color: AppConstants.primaryColor,
      )
    ],
  );
}
