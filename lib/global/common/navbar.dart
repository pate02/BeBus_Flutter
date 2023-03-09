import 'package:bebus/global/common/my_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../modules/home/widgets/favourite_card.dart';
import '../../modules/route-options/routeoptions_view.dart';
import '../themes/colors/colors.dart';

class Navbar extends StatelessWidget {
  final String text;
  final ValueChanged<String>? onChanged;
  const Navbar({Key? key, required this.text, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.26,
          child: Stack(
            children: <Widget>[
              Container(
                  height: size.height * 0.26 - 35,
                  decoration: BoxDecoration(
                    color: AppColors.FakeBlack,
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 70, right: 16, left: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const RouteoptionsView()),
                                );
                              },
                              child: MyIconButton(
                                iconcolor: AppColors.FakeWhite,
                                backgroundColor: Colors.transparent,
                                icon: Iconsax.arrow_left_24,
                                size: 55,
                                borderRadius: 20,
                                borderColor: AppColors.FakeWhite,
                              ),
                            ),
                            const SizedBox(width: 50),
                            Text(
                              text,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.FakeWhite),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 70,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 20),
                            blurRadius: 64,
                            color: AppColors.FakeBlack.withOpacity(0.15))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                              onChanged: onChanged,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.CardBackgroundColor,
                                  prefixIcon: Icon(Iconsax.search_normal_14,
                                      color: AppColors.GreyTxts),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none),
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: AppColors.GreyTxts),
                                  hintText: "Cerca fermata.."),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
