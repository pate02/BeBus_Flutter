import 'package:flutter/material.dart';

class TxtWiconBtn extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final Color iconcolor;
  final IconData icon;
  double width;
  double height;

  TxtWiconBtn(
      {super.key,
      required this.backgroundColor,
      required this.text,
      required this.textColor,
      required this.iconcolor,
      required this.icon,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
     height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: textColor,
                letterSpacing: .2),
          ),
          const SizedBox(width: 10),
          Icon(icon, size: 22, color: iconcolor),
        ],
      ),
    );
  }
}
