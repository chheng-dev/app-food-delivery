import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String btnTtitle;
  final Function() onPressed;
  final double? fontSize;
  final Color? color;

  const TextButtonWidget({super.key, required this.btnTtitle, required this.onPressed, this.fontSize, this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed, 
      child: Text(
        btnTtitle,
        style: TextStyle(
          fontSize: fontSize,
          color: color
        ),
      )
    );
  }
}