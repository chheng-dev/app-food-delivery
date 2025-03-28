import 'package:flutter/material.dart';
import 'package:food_delivery/views/forgot_password_screen.dart';
import 'package:food_delivery/views/home_screen.dart';
import 'package:food_delivery/views/item_detail_screen.dart';
import 'package:food_delivery/views/login_screen.dart';
import 'package:food_delivery/views/main_screen.dart';
import 'package:food_delivery/views/register_screen.dart';
import 'package:food_delivery/views/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String main = "/main";
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = "/forgot-password";

  static const String itemDetail = '/item-detail';
  
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case main:
        return MaterialPageRoute(builder: (_) => MainScreen());
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case forgotPassword:
        return MaterialPageRoute(builder: (_) => ForgotPasswordScreen());
      case itemDetail:
        return MaterialPageRoute(builder: (_) => ItemDetailScreen());
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}