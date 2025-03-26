import 'package:flutter/material.dart';

class BgImageWidget extends StatelessWidget {
  const BgImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg-login.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Opacity(opacity: 0.5, child: Container(color: Colors.black)),
    );
  }
}
