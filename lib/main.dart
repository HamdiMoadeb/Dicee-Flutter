import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  int leftDiceNb = 4;
  int rightDiceNb = 1;

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
              },
              child: Image.asset('images/dice$leftDiceNb.png'),
            ),
          ),
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed: () {
                print("Right Button Clicked");
              },
              child: Image.asset('images/dice$rightDiceNb.png'),
            ),
          ),
        ],
      ),
    );
  }
}
