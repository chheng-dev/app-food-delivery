import 'package:flutter/material.dart';
import 'package:food_delivery/views/splash_screen.dart';

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
      ),
      home: SplashScreen(),
    );
  }
}
