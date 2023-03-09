import 'package:bebus/modules/stop/stops-list/stoplist_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../global/common/my_icon_button.dart';
import '../../../../global/themes/colors/colors.dart';
import '../../../../middlepage.dart';

class StopAppbar extends StatelessWidget {
  const StopAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 70),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (_) => StoplistView()),
                    );
                  },
                  child: MyIconButton(
                    iconcolor: AppColors.FakeWhite,
                    backgroundColor: AppColors.FakeBlack,
                    icon: Iconsax.arrow_left_24,
                    size: 55,
                    borderRadius: 20,
                    borderColor: Colors.transparent,
                  ),
                ),
                const Spacer(),
                Container(
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
