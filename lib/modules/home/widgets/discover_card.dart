import 'package:bebus/global/common/txtWicon_btn.dart';
import 'package:bebus/global/themes/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.19,
      margin: const EdgeInsets.only(right: 16, left: 16, top: 360),
      decoration: BoxDecoration(
          color: AppColors.FakeWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 20),
                blurRadius: 64,
                color: AppColors.FakeBlack.withOpacity(0.08))
          ]),
      child: Padding(
        padding: const EdgeInsets.only(top: 22.0, left: 22.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Il tuo bus sta arrivando?',
                  style: TextStyle(
                      color: AppColors.FakeBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Scoprilo.',
                  style: TextStyle(
                      color: AppColors.PrimaryGreen,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                TxtWiconBtn(
                    backgroundColor: AppColors.OpacitiedGreen,
                    text: 'Scopri ora',
                    textColor: AppColors.FakeBlack,
                    iconcolor: AppColors.FakeBlack,
                    icon: Iconsax.arrow_right_14,
                    height: 45,
                    width: 150)
              ],
            )
          ],
        ),
      ),
    );
  }
}
