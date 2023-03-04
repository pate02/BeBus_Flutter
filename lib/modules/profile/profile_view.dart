import 'package:bebus/global/themes/colors/colors.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
const ProfileView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        backgroundColor: AppColors.PrimaryGreen,
      ),
    );
  }
}