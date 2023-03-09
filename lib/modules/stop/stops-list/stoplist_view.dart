import 'dart:math';

import 'package:bebus/global/common/item_card.dart';
import 'package:bebus/global/common/navbar.dart';
import 'package:bebus/global/models/stop.dart';
import 'package:bebus/global/themes/colors/colors.dart';
import 'package:bebus/modules/route-options/routeoptions_view.dart';
import 'package:bebus/modules/stop/stop-details/stopdetails_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class StoplistView extends StatefulWidget {
  StoplistView({Key? key}) : super(key: key);

  @override
  _StoplistViewState createState() => _StoplistViewState();
}

class _StoplistViewState extends State<StoplistView> {
  List<Stop> stops = [
    Stop(stopId: 1, stopName: 'prova1', isFavorite: false),
    Stop(stopId: 2, stopName: 'prova2', isFavorite: true),
    Stop(stopId: 3, stopName: 'prova3', isFavorite: false),
    Stop(stopId: 4, stopName: 'prova4', isFavorite: false),
    Stop(stopId: 5, stopName: 'prova5', isFavorite: true),
  ];

  List<Stop> _foundedStops = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      _foundedStops = stops;
    });
  }

  onSearch(String search) {
    setState(() {
      _foundedStops = stops
          .where(
              (stop) => stop.stopId.toString().toLowerCase().contains(search))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Navbar(
                  text: 'Cerca fermata',
                  onChanged: (value) {
                    onSearch(value);
                  }),
              Container(
                margin: const EdgeInsets.only(top: 230, left: 16, right: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Lista delle fermate',
                          style: TextStyle(
                              color: AppColors.FakeBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    Divider(
                      height: 25,
                      thickness: 1,
                      color: AppColors.BorderColor,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(top: 225),
                    child: _foundedStops.isNotEmpty
                        ? ListView.builder(
                            itemCount: _foundedStops.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const StopdetailsView()),
                                        );
                                      },
                                      child: ItemCard(
                                          stopObj: _foundedStops[index])));
                            })
                        : Center(
                            child: Text(
                            "Nessuna fermata trovata",
                            style: TextStyle(color: AppColors.FakeBlack),
                          )),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
