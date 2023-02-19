import 'package:bebus/middlepage.dart';
import 'package:flutter/material.dart';

class Startup extends StatelessWidget {
const Startup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: 'BeBus',
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Middlepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}