import 'package:bebus/global/common/item_card.dart';
import 'package:bebus/global/common/navbar.dart';
import 'package:bebus/global/models/stop.dart';
import 'package:bebus/global/themes/colors/colors.dart';
import 'package:bebus/modules/route-options/routeoptions_view.dart';
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
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const RouteoptionsView()),
                    );
                  },
                  child: Navbar(text: 'Cerca fermata'),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(top: 150),
                        height: 38,
                        child: TextField(
                          onChanged: (value) => onSearch(value),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[850],
                              contentPadding: EdgeInsets.all(0),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey.shade500,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none),
                              hintStyle: TextStyle(
                                  fontSize: 14, color: Colors.grey.shade500),
                              hintText: "Search users"),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                     margin: const EdgeInsets.only(top: 200),
                      child: _foundedStops.isNotEmpty
                          ? ListView.builder(
                              itemCount: _foundedStops.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: ItemCard(stopObj: _foundedStops[index])
                                );
                              })
                          : const Center(
                              child: Text(
                              "No users found",
                              style: TextStyle(color: Colors.white),
                            )),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


