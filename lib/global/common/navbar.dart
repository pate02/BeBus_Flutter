import 'package:bebus/global/common/my_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../themes/colors/colors.dart';

class Navbar extends StatelessWidget {
  final String text;
  const Navbar({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 45),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyIconButton(
              iconcolor: AppColors.FakeWhite,
              backgroundColor: AppColors.FakeBlack,
              icon: Iconsax.arrow_left_24,
              size: 55,
              borderRadius: 20),
          SizedBox(
            width: 50,
          ),
          Expanded(
              flex: 1,
              child: Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.FakeBlack,
                    fontSize: 22),
              ))
        ],
      ),
    );
  }
}
