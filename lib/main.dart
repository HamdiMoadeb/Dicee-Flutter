import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNb = 4;
  int rightDiceNb = 1;

  void changeDiceState() {
    setState(() {
      leftDiceNb = Random().nextInt(6) + 1;
      rightDiceNb = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 2,
            child: FlatButton(
              onPressed: () {
                print("Left Button Clicked");
                changeDiceState();
              },
              child: Image.asset('images/dice$leftDiceNb.png'),
            ),
          ),
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed: () {
                print("Right Button Clicked");
                changeDiceState();
              },
              child: Image.asset('images/dice$rightDiceNb.png'),
            ),
          ),
        ],
      ),
    );
  }
}
