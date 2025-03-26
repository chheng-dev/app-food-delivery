import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/arrow_icon_back.dart';
import 'package:food_delivery/widgets/bg_image_widget.dart';
import 'package:food_delivery/widgets/button_widget.dart';
import 'package:food_delivery/widgets/header_title_widget.dart';
import 'package:food_delivery/widgets/passowrd_field_widget.dart';
import 'package:food_delivery/widgets/text_form_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obscureText = true;
  void _togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BgImageWidget(),
          ArrowIconBack(),
          HeaderTitleWidget(
            title: "Register", 
            subTitle: "Please sign up to get started"
          ),
          _buildRegisterForm(context, _togglePasswordVisibility, obscureText),
        ],
      ),
    );
  }
}

Widget _buildRegisterForm(BuildContext context, VoidCallback _togglePasswordVisibility, bool obscureText){
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
          AppConstants.mediumGap,
          TextFormFieldWidget(
            labelText: "NAME", 
            prefixIcon: Icons.person_outline_sharp, 
            keyboardType: TextInputType.text, 
            obscureText: false, 
            hintText: "Jonh Doe"
          ),
          TextFormFieldWidget(
            labelText: "EAMIL",
            prefixIcon: Icons.email,
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            hintText: "exaple@gmail.com",
          ),
          PassowrdFieldWidget(
            labelText: "PASSWORD",
            prefixIcon: Icons.lock,
            obscureText: obscureText,
            hintText: "Enter your password", 
            keyboardType: TextInputType.visiblePassword,
            onPressed: _togglePasswordVisibility,
          ),
           PassowrdFieldWidget(
            labelText: "RE-TYPE PASSWORD",
            prefixIcon: Icons.lock,
            obscureText: obscureText,
            hintText: "Enter your re-type password",
            keyboardType: TextInputType.visiblePassword,
            onPressed: _togglePasswordVisibility,
          ),
          AppConstants.mediumGap,
          ButtonWidget(
            btnTtitle: "REGISTER", 
            onPressed: (){}
          )
        ]
      ),
    )
  );
}

