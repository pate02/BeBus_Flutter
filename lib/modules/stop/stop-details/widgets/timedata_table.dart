import 'dart:ffi';

import 'package:bebus/global/models/schedule.dart';
import 'package:bebus/global/themes/colors/colors.dart';
import 'package:bebus/modules/stop/stop-details/widgets/showmore_btn.dart';
import 'package:flutter/material.dart';

class TimedataTable extends StatelessWidget {
  final List<Schedule> schedules;
  List<String> headerTitles = ["Bus", "Destinazione", "Orario"];

  TimedataTable({Key? key, required this.schedules}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 360),
      child: SingleChildScrollView(
        physics: 
            const BouncingScrollPhysics(),
            
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Table(
              columnWidths: const {
                0: FlexColumnWidth(0.2),
                1: FlexColumnWidth(0.5),
                2: FlexColumnWidth(0.3),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder(
                horizontalInside: BorderSide(
                  color: AppColors.CardBackgroundColor,
                  width: 1.0,
                ),
              ),
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: AppColors.CardBackgroundColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  children: headerTitles
                      .map((header) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 18, horizontal: 13),
                            child: Text(
                              header,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.FakeBlack,
                              ),
                            ),
                          ))
                      .toList(),
                ),
                ...schedules.map((row) => TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Text(
                              row.busId,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.GreyTxts,
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Text(
                              row.destination,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.GreyTxts,
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: row.leftTime == 'In arrivo'
                                    ? AppColors.WarningYellow
                                    : null,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 8),
                                child: Text(
                                  row.leftTime,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            const ShowmoreBtn(),
          ],
        ),
      ),
    );
  }
}
