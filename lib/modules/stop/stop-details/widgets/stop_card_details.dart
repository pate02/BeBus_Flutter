import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../global/themes/colors/colors.dart';

class StopCardDetails extends StatelessWidget {
const StopCardDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.BorderColor)),
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 5,
                          child: RichText(
                            text: TextSpan(
                              text: 'Fermata ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.FakeBlack,
                                  fontSize: 20),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: '808',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600)),
                              ],
                            ),
                          )),
                      const Expanded(flex: 1, child: Icon(Iconsax.heart5))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                        'Viale XX Settembre',
                        style: TextStyle(
                            color: AppColors.GreyTxts,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ))
                    ],
                  )
                ],
              ),
            ),
          );
  }
}