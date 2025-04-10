import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/views/forgot_password_screen.dart';
import 'package:food_delivery/views/register_screen.dart';
import 'package:food_delivery/widgets/button_widget.dart';
import 'package:food_delivery/widgets/passowrd_field_widget.dart';
import 'package:food_delivery/widgets/socail_button_widget.dart';
import 'package:food_delivery/widgets/text_button_widget.dart';
import 'package:food_delivery/widgets/text_form_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              Text("Sign In", style: AppConstants.titleStyle),
              AppConstants.smallGap,
              Text(
                "Sign in with one of the following options.",
                style: AppConstants.descriptionStyle,
              ),
              AppConstants.mediumGap,
              _buildSocailSection(),
              _buildLoginForm(context, _togglePasswordVisibility, obscureText),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildSocailSection() {
    return Row(
      children: [
        SocailButtonWidget(
          title: "Google",
          icon: Icons.email,
        ),
        SizedBox(width: 16),
        SocailButtonWidget(
          title: "Iphone",
          icon: Icons.apple,
        ),
      ],
    );
  }
}

Widget _buildLoginForm(BuildContext context, VoidCallback _togglePasswordVisibility, bool obscureText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      AppConstants.mediumGap,
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
      Container(
        alignment: Alignment.topRight,
        child: TextButtonWidget(
          btnTtitle: "Forgot password", 
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
            );
          },
          color: AppConstants.primaryColor,
        ),
      ),
      AppConstants.mediumGap,
      ButtonWidget(btnTtitle: "Sign in", onPressed: (){}),
      AppConstants.mediumGap,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an account?"),
          SizedBox(width: 6),
          TextButtonWidget(
            btnTtitle: "Sign up", 
            color: AppConstants.primaryColor,
            onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterScreen()),
              );
            }
          )
        ],
      ),
      AppConstants.mediumGap,
    ],
  );
}
