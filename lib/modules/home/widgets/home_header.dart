import 'package:bebus/global/common/my_icon_button.dart';
import 'package:bebus/global/themes/colors/colors.dart';
import 'package:bebus/modules/home/widgets/favourite_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.4,
          child: Stack(
            children: <Widget>[
              Container(
                  height: size.height * 0.4 - 35,
                  decoration: BoxDecoration(
                      color: AppColors.FakeBlack,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35))),
                  child: Container(
                    margin: const EdgeInsets.only(top: 70, right: 16, left: 16),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('BeBus', style: TextStyle(color: AppColors.FakeWhite,fontWeight: FontWeight.w600,fontSize: 20),),
                            const Spacer(),
                            MyIconButton(
                                iconcolor: AppColors.FakeWhite,
                                backgroundColor: AppColors.HomeButtons,
                                icon: Iconsax.image,
                                size: 55,
                                borderRadius: 20, borderColor: Colors.transparent,),
                          ],
                        ),
                        const SizedBox(height: 35),
                        Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                text: 'Ciao,',
                                style: TextStyle(
                                  color: AppColors.GreyTxts,
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\nAlessandro!',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 26,
                                        color: AppColors.FakeWhite,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
              const Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: FavouriteCard(),
              ),
              
            ],
          ),
        )
      ],
    );
  }
}
