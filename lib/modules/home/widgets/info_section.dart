import 'package:bebus/global/themes/colors/colors.dart';
import 'package:bebus/modules/home/widgets/info_card.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class InfoSection extends StatelessWidget {

const InfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 550),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  'Hai bisogno di informazioni?',
                  style: TextStyle(
                      color: AppColors.FakeBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Divider(
            height: 25,
            thickness: 1.5,
            indent: 16,
            endIndent: 16,
            color: AppColors.BorderColor,
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            clipBehavior: Clip.none,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget> [
              InfoCard(title: 'Problemi?', subtitle: 'Centro supporto.'),
               SizedBox(width: 10,),
              InfoCard(title: 'Sei aggiornato?', subtitle: "Dai un'occhiata alle news.")
              ],
            ),
          )
        ],
      ),
    );
  }
}
