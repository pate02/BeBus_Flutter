import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../themes/colors/colors.dart';

class ShowonmapBtn extends StatelessWidget {
const ShowonmapBtn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
                  height: 55,
                  width: 220,
                  decoration: BoxDecoration(
                    color: AppColors.OpacitiedGreen,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Mostra sulla mappa',
                              style: TextStyle(
                                  color: AppColors.PrimaryGreen,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Center(
                              child: Icon(
                                Iconsax.map,
                                color: AppColors.PrimaryGreen,
                              ),
                            ),
                          ))
                    ],
                  ),
                );
  }
}