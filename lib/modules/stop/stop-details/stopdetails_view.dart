import 'package:bebus/modules/route-options/widgets/topbar.dart';
import 'package:bebus/modules/stop/stop-details/widgets/stop_appbar.dart';
import 'package:bebus/modules/stop/stop-details/widgets/stop_card_details.dart';
import 'package:bebus/modules/stop/stop-details/widgets/time_info.dart';
import 'package:flutter/material.dart';

class StopdetailsView extends StatelessWidget {
  const StopdetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(children: [
              const StopAppbar(),
              Container(
                  margin: const EdgeInsets.only(top: 150),
                  child: const StopCardDetails()),
              Container(
                  margin: const EdgeInsets.only(top: 270),
                  child: const TimeInfo()),
            ]),
          ),
        ));
  }
}
