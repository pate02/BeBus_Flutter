import 'package:bebus/global/themes/colors/colors.dart';
import 'package:bebus/modules/home/widgets/discover_card.dart';
import 'package:bebus/modules/home/widgets/home_header.dart';
import 'package:bebus/modules/home/widgets/info_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: AppColors.CardBackgroundColor,
        body: Center(
          child: SizedBox(
           
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(children: const [         
              HomeHeader(),            
              DiscoverCard(),
              InfoSection(),
            ]),
          ),
        ));
  }
  }



