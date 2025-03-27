import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/widgets/button_widget.dart';
import 'package:food_delivery/widgets/passowrd_field_widget.dart';
import 'package:food_delivery/widgets/socail_button_widget.dart';
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
      backgroundColor: AppConstants.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: AppConstants.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sign Up", style: AppConstants.titleStyle),
              AppConstants.smallGap,
               Text(
                "Sign up with one of the following options.",
                style: AppConstants.descriptionStyle,
              ),
              AppConstants.mediumGap,
              _buildSocailSection(),
              _buildRegisterForm(context, _togglePasswordVisibility, obscureText),
            ],
          ),
        ),
      ),
    );
  }
}

Row _buildSocailSection() {
  return Row(
    children: [
      SocailButtonWidget(title: "Google", icon: Icons.email),
      SizedBox(width: 16),
      SocailButtonWidget(title: "Iphone", icon: Icons.apple),
    ],
  );
}

Widget _buildRegisterForm(BuildContext context, VoidCallback _togglePasswordVisibility, bool obscureText){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      AppConstants.mediumGap,
      TextFormFieldWidget(
        labelText: "Name",
        hintText: "Jonh Doe",
        keyboardType: TextInputType.text,
        obscureText: false,
      ),
      TextFormFieldWidget(
        labelText: "Email id/ Mobile no",
        hintText: "example@gmail.com",
        keyboardType: TextInputType.emailAddress,
        obscureText: false,
      ),
      PasswordFieldWidget(
        labelText: "Password",
        obscureText: obscureText,
        hintText: "Enter your password",
        keyboardType: TextInputType.visiblePassword,
        onPressed: _togglePasswordVisibility,
      ),
      AppConstants.mediumGap,
      Text("Your password must be at least 8 characters long and include a mix of letters, numbers, and special characters.", style: AppConstants.descriptionStyle),
      AppConstants.largeGap,
      ButtonWidget(
        btnTtitle: "Next", 
        onPressed: (){}
      )
    ]
  );
}

