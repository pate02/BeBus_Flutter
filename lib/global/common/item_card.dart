import 'package:bebus/global/common/my_icon_button.dart';
import 'package:bebus/global/themes/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../models/stop.dart';

class ItemCard extends StatelessWidget {

final Stop stopObj;

 
  ItemCard({Key? key, required this.stopObj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        
        height: 150,
        decoration: BoxDecoration(
            color: AppColors.CardBackgroundColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              Row(
                children: [
                  MyIconButton(
                      iconcolor: AppColors.FakeWhite,
                      backgroundColor: AppColors.PrimaryGreen,
                      icon: Iconsax.location,
                      size: 45,
                      borderRadius: 12),
                  Spacer(),
                  
                  if(stopObj.isFavorite)
                  MyIconButton(
                      iconcolor: AppColors.FakeBlack,
                      backgroundColor: Colors.transparent,
                      icon: Iconsax.heart5,
                      size: 45,
                      borderRadius: 12),
                ],
               
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Fermata ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.FakeBlack,
                        fontSize: 20,
                      ),
                      children:  <TextSpan>[
                        TextSpan(
                            text: stopObj.stopId.toString(),
                            style: TextStyle(fontWeight: FontWeight.w600)),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    stopObj.stopName,
                    style: TextStyle(
                        color: AppColors.GreyTxts,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}





