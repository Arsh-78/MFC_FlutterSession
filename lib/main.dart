import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Dice App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: DicePane(),
      ),
    );
  }
}

class DicePane extends StatefulWidget {
  @override
  State<DicePane> createState() => _DicePaneState();
}

class _DicePaneState extends State<DicePane> {
  int diceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDiceState();
                });
              },
              child: Image.asset('images/dice${diceNumber}.png'),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(30.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  void changeDiceState() {
    diceNumber = Random().nextInt(6) + 1;
  }
}
