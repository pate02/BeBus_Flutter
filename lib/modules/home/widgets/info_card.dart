import 'package:flutter/material.dart';

import '../../../global/themes/colors/colors.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const InfoCard({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        width: size.width * 0.7,
        height: 110,
        decoration: BoxDecoration(
            color: AppColors.FakeWhite,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 16),
                  blurRadius: 64,
                  color: AppColors.FakeBlack.withOpacity(0.12))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
               
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: AppColors.FakeBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Wrap(
                children: [
                  Text(
                    subtitle,
                    style: TextStyle(
                        color: AppColors.PrimaryGreen,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
