// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:dice_app/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}
class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice app',
      theme: ThemeData(
       primaryColor: Colors.blue, 
      ),
      home: HomeScreen(),
    );
  }
}