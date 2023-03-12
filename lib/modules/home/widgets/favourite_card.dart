import 'package:bebus/modules/favourite-stops/favouritestops_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../global/themes/colors/colors.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const FavouritestopsView()),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        height: 80,
        decoration: BoxDecoration(
            color: AppColors.PrimaryGreen,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 20),
                  blurRadius: 64,
                  color: AppColors.FakeBlack.withOpacity(0.15))
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                  decoration: BoxDecoration(
                    color: AppColors.FakeWhite,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                    child: Icon(Iconsax.heart5,
                        size: 27, color: AppColors.PrimaryGreen),
                  ),
                )),
            Expanded(
                flex: 5,
                child: Text(
                  'Le tue fermate preferite',
                  style: TextStyle(
                      color: AppColors.FakeWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0),
                )),
            Expanded(
                flex: 1,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(
                    Iconsax.arrow_right_34,
                    color: AppColors.FakeWhite,
                  ),
                )))
          ],
        ),
      ),
    );
  }
}
