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
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    const HomeView(),
    const RouteoptionsView(),
    const ProfileView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: const Offset(0, -20),
              blurRadius: 64,
              color: AppColors.FakeBlack.withOpacity(0.08))
        ]),
        height: 70,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.routing),
              label: 'Tratte',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.user),
              label: 'Profilo',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.PrimaryGreen,
          unselectedItemColor: AppColors.FakeBlack,
          backgroundColor: Colors.white,
          // unselectedFontSize: 14,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            height: 1.70,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            height: 1.70,
          ),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
