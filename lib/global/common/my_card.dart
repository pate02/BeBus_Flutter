import 'package:bebus/global/common/my_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../themes/colors/colors.dart';

class MyCard extends StatelessWidget {
  final Color backgroundColor;
  final Color cubeBackColor;
  final IconData cubeIcon;
  final Color cubeIconColor;
  double height;
  final String text;
  final Color textColor;
  final Color arrowColor;

  MyCard({
    Key? key,
    required this.height,
    required this.backgroundColor,
    required this.cubeBackColor,
    required this.cubeIcon,
    required this.text,
    required this.textColor,
    required this.arrowColor, required this.cubeIconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: GestureDetector(
          child: Container(
            height: height,
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(20)),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.transparent,
                  child: Padding(
                      padding: const EdgeInsets.all(17),
                      child: Container(
                        decoration: BoxDecoration(
                          color: cubeBackColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Icon(
                            cubeIcon,
                            size: 27,
                            color: cubeIconColor,
                          ),
                        ),
                      )),
                ),
              ),
              Expanded(
                flex: 7,
                child: Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: textColor,
                      fontSize: 18),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(
                      Iconsax.arrow_right_34,
                      size: 24,
                      color: arrowColor,
                    ),
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
