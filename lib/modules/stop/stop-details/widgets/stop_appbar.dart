import 'package:bebus/global/common/showonmap.btn.dart';
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
                    iconcolor:AppColors.FakeBlack,
                    backgroundColor: AppColors.CardBackgroundColor,
                    icon: Iconsax.arrow_left_24,
                    size: 55,
                    borderRadius: 20,
                    borderColor: Colors.transparent,
                  ),
                ),
                const Spacer(),
                const ShowonmapBtn(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
