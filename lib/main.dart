import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';
import 'package:food_delivery/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        fontFamily: 'WinkySans',
        primaryColor: AppConstants.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
