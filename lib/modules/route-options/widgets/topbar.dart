import 'package:bebus/global/common/my_icon_button.dart';
import 'package:bebus/global/themes/colors/colors.dart';
import 'package:bebus/middlepage.dart';
import 'package:bebus/modules/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Topbar extends StatelessWidget {
  const Topbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => const Middlepage()));
                  },
                  child: MyIconButton(
                    iconcolor: AppColors.FakeWhite,
                    backgroundColor: Colors.transparent,
                    icon: Iconsax.arrow_left_24,
                    size: 55,
                    borderRadius: 20,
                    borderColor: Colors.transparent,
                  ),
                ),
                Spacer(),
                MyIconButton(
                  iconcolor: AppColors.PrimaryGreen,
                  backgroundColor: AppColors.OpacitiedGreen,
                  icon: Iconsax.heart5,
                  size: 55,
                  borderRadius: 20,
                  borderColor: Colors.transparent,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Scegli come cercare',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                            color: AppColors.FakeWhite),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Con queste opzioni puoi trovare la fermata in cui prendere il bus.',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: AppColors.GreyTxts),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
