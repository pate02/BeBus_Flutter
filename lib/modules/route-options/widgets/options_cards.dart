import 'package:bebus/global/common/my_card.dart';
import 'package:bebus/global/themes/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../stop/stops-list/stoplist_view.dart';

class OptionsCards extends StatelessWidget {
  const OptionsCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.symmetric(horizontal: 16),
     
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => StoplistView()));
                },
            child: Row(
              children: [
                MyCard(
                    height: 87,
                    backgroundColor: AppColors.CardBackgroundColor,
                    cubeBackColor: AppColors.PrimaryGreen,
                    cubeIcon: Iconsax.location,
                    text: 'Cerca per fermata',
                    textColor: AppColors.FakeBlack,
                    arrowColor: AppColors.FakeBlack, cubeIconColor: AppColors.FakeWhite ,)
              ],
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              MyCard(
                  height: 87,
                  backgroundColor: AppColors.CardBackgroundColor,
                  cubeBackColor: AppColors.PrimaryGreen,
                  cubeIcon: Iconsax.routing,
                  text: 'Cerca per percorso',
                  textColor: AppColors.FakeBlack,
                  arrowColor: AppColors.FakeBlack, cubeIconColor: AppColors.FakeWhite ,)
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              MyCard(
                  height: 87,
                  backgroundColor: AppColors.CardBackgroundColor,
                  cubeBackColor: AppColors.PrimaryGreen,
                  cubeIcon: Iconsax.signpost,
                  text: 'Cerca per indirizzo',
                  textColor: AppColors.FakeBlack,
                  arrowColor: AppColors.FakeBlack, cubeIconColor: AppColors.FakeWhite ,)
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              MyCard(
                  height: 87,
                  backgroundColor: AppColors.CardBackgroundColor,
                  cubeBackColor: AppColors.PrimaryGreen,
                  cubeIcon: Iconsax.gps,
                  text: 'Cerca vicino a me',
                  textColor: AppColors.FakeBlack,
                  arrowColor: AppColors.FakeBlack, cubeIconColor: AppColors.FakeWhite ,)
            ],
          ),
        ],
      ),
    );
  }
}
