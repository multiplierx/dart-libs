import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIcon extends StatelessWidget {
  final String icon;
  final double width;
  final double height;
  final Color color;

  AppIcon(
    this.icon, {
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      color: color,
      height: height,
      width: width,
      package: 'multiplier_icons',
    );
  }
}
