import 'package:bebus/global/themes/colors/colors.dart';
import 'package:bebus/modules/route-options/widgets/options_cards.dart';
import 'package:bebus/modules/route-options/widgets/topbar.dart';
import 'package:flutter/material.dart';

class RouteoptionsView extends StatelessWidget {
  const RouteoptionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.FakeBlack,
        body: Center(
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(children: [
              const Topbar(),
              Container(
                margin: const EdgeInsets.only(top: 300),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: OptionsCards(),
                ),
              ),
            ]),
          ),
        ));
  }
}
