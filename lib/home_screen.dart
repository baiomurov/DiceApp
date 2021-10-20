import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftCount = 1;
  int rightCount = 6;

  void throwDice() {
    leftCount = Random().nextInt(6) + 1;
    rightCount = Random().nextInt(6) +1;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: throwDice,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Image.asset(
                    'images/dice$leftCount.png',
                  ),
                ),
              ),
            ),
            Expanded(
	    child: GestureDetector(
              onTap: throwDice,
               child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Image.asset(
                  'images/dice$rightCount.png',
                 ),
               ),
             ),
           ),
         ],
       ),
     ),
   );
 }
}