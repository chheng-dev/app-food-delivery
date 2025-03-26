import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class IconSocailWidget extends StatelessWidget {
  final IconData icon;
  final double? size;
  final Color color;
  final Color? iconColor;
  final VoidCallback? onPressed;

  const IconSocailWidget({super.key, required this.icon, this.size, required this.color, this.iconColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GFIconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: iconColor),
        shape: GFIconButtonShape.circle,
        color: color,
      )
    );
  }
}