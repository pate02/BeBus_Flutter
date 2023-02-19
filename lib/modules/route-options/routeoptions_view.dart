import 'package:bebus/modules/route-options/widgets/options_cards.dart';
import 'package:bebus/modules/route-options/widgets/topbar.dart';
import 'package:flutter/material.dart';

class RouteoptionsView extends StatelessWidget {
const RouteoptionsView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(children: [
              Topbar(),
              OptionsCards(),
            ]),
          ),
        )));
  }
}