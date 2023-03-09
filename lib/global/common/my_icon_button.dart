import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final Color iconcolor;
  final Color? backgroundColor;
  final IconData icon;
  final double borderRadius;
  final Color borderColor;
  double size;

  MyIconButton(
      {Key? key,
      required this.iconcolor,
      required this.backgroundColor,
      required this.icon,
      required this.size,
      required this.borderRadius, required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor)),
      child: Center(
          child: Icon(
        icon,
        color: iconcolor,
        size: 24,
      )),
          
    );
  }
}
