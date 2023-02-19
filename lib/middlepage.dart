import 'package:bebus/modules/favourite-stops/favouritestops_view.dart';
import 'package:bebus/modules/home/home_view.dart';
import 'package:bebus/modules/profile/profile_view.dart';
import 'package:bebus/modules/route-options/routeoptions_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:iconsax/iconsax.dart';

import 'global/themes/colors/colors.dart';

class Middlepage extends StatefulWidget {
  const Middlepage({Key? key}) : super(key: key);

  @override
  _MiddlepageState createState() => _MiddlepageState();
}

class _MiddlepageState extends State<Middlepage> {
  int _selectedIndex = 1;

  final List<Widget> _pages = <Widget>[
    const RouteoptionsView(),
    const HomeView(),
    const ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: _pages.elementAt(_selectedIndex)),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Container(
          margin: EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: AppColors.FakeBlack,
            borderRadius: BorderRadius.circular(70),
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 45, vertical: 12.0),
              child: GNav(
                activeColor: AppColors.FakeWhite,
                iconSize: 24,
                padding: EdgeInsets.symmetric(vertical: 12),
                duration: Duration(milliseconds: 1000),
                color: AppColors.GreyTxts,
                tabs: const [
                  GButton(
                    icon: Iconsax.routing,
                  ),
                  GButton(
                    icon: Iconsax.home,
                  ),
                  GButton(
                    icon: Iconsax.user,
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
