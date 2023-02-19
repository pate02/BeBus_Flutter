import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final Color iconcolor;
  final Color backgroundColor;
  final IconData icon;
  final double borderRadius;
  double size;

  MyIconButton(
      {Key? key,
      required this.iconcolor,
      required this.backgroundColor,
      required this.icon,
      required this.size,
      required this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Center(
          child: Icon(
        icon,
        color: iconcolor,
        size: 24,
      )),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius)),
    );
  }
}
