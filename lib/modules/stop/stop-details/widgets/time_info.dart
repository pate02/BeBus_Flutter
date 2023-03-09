import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../global/common/my_icon_button.dart';
import '../../../../global/themes/colors/colors.dart';

class TimeInfo extends StatelessWidget {
const TimeInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Dati aggiornati alle ore: ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.FakeBlack,
                        fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                          text: '13:52',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.PrimaryGreen)),
                    ],
                  ),
                ),
                const Spacer(),
                MyIconButton(iconcolor: AppColors.FakeWhite, icon: Iconsax.refresh, size: 55, borderRadius: 15, borderColor: Colors.transparent, backgroundColor: AppColors.PrimaryGreen,)
              ],
            ),
          );
  }
}