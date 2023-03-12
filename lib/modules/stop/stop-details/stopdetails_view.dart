import 'package:bebus/modules/route-options/widgets/topbar.dart';
import 'package:bebus/modules/stop/stop-details/widgets/stop_appbar.dart';
import 'package:bebus/modules/stop/stop-details/widgets/stop_card_details.dart';
import 'package:bebus/modules/stop/stop-details/widgets/time_info.dart';
import 'package:bebus/modules/stop/stop-details/widgets/timedata_table.dart';
import 'package:flutter/material.dart';

import '../../../global/models/schedule.dart';

class StopdetailsView extends StatelessWidget {


 static const List<Schedule>  schedules = [
    Schedule(busId: "110", destination: "Via Fratelli Cairoli", leftTime: "In arrivo"),
    Schedule(busId: "20", destination: "ITE E.Tosi", leftTime: "5 min"),
    Schedule(busId: "46a", destination: "Viale XX Settembre", leftTime: "7 min"),
    Schedule(busId: "110", destination: "Via Fratelli Cairoli", leftTime: "12 min"),
    Schedule(busId: "20", destination: "ITE E.Tosi", leftTime: "30 min"),
    // Schedule(busId: "110", destination: "Via Fratelli Cairoli", leftTime: "40 min"),
    // Schedule(busId: "20", destination: "ITE E.Tosi", leftTime: "45 min"),
    // Schedule(busId: "46a", destination: "Viale XX Settembre",leftTime: "45 min"),
    // Schedule(busId: "110", destination: "Via Fratelli Cairoli", leftTime: "50 min"),
    // Schedule(busId: "46a", destination: "Viale XX Settembre", leftTime: "60 min"),
  ];

  const StopdetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              TimedataTable(schedules: schedules,)
            ]),
          ),
        ));
  }
}
