import 'package:flutter/material.dart';

import '../../global/common/item_card.dart';
import '../../global/common/navbar.dart';
import '../../global/models/stop.dart';
import '../../global/themes/colors/colors.dart';
import '../stop/stop-details/stopdetails_view.dart';

class FavouritestopsView extends StatefulWidget {
  const FavouritestopsView({ Key? key }) : super(key: key);

  @override
  _FavouritestopsViewState createState() => _FavouritestopsViewState();
}

class _FavouritestopsViewState extends State<FavouritestopsView> {


 List<Stop> stops = [
    Stop(stopId: 1, stopName: 'prova1', isFavorite: true),
    Stop(stopId: 2, stopName: 'prova2', isFavorite: true),
    Stop(stopId: 3, stopName: 'prova3', isFavorite: true),
    Stop(stopId: 4, stopName: 'prova4', isFavorite: true),
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
                  text: 'Fermate preferite',
                  onChanged: (value) {
                    onSearch(value);
                  }),
              Container(
                margin: const EdgeInsets.only(top: 230, left: 16, right: 16),
                child: Column(
                  children: [
                    // Row(
                    //   children: [
                    //     Text(
                    //       'Lista delle fermate',
                    //       style: TextStyle(
                    //           color: AppColors.FakeBlack,
                    //           fontWeight: FontWeight.w600,
                    //           fontSize: 18),
                    //     ),
                    //   ],
                    // ),
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
                    margin: const EdgeInsets.only(top: 200),
                    child: _foundedStops.isNotEmpty
                        ? ListView.builder(
                            physics: const BouncingScrollPhysics(),
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