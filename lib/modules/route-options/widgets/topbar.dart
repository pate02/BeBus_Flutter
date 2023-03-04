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
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 45),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => const Middlepage()));
                },
                child: MyIconButton(
                    iconcolor: AppColors.FakeWhite,
                    backgroundColor: AppColors.FakeBlack,
                    icon: Iconsax.arrow_left_24,
                    size: 55,
                    borderRadius: 20),
              ),
              Spacer(),
              MyIconButton(
                  iconcolor: AppColors.FakeWhite,
                  backgroundColor: AppColors.SecondaryOrange,
                  icon: Iconsax.heart,
                  size: 55,
                  borderRadius: 20)
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
                      'Come vuoi cercare?',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 28, color: AppColors.FakeBlack),
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
                        'Per vedere i dettagli delle tratte, seleziona l’opzione che preferisci.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16 , color: AppColors.GreyTxts),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
