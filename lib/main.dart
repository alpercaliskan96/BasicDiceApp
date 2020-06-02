import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Basic Dice App',
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: DicePages(),
      ),
    ),
  );
}

class DicePages extends StatefulWidget {
  @override
  _DicePagesState createState() => _DicePagesState();
}

class _DicePagesState extends State<DicePages> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 2;

  void ChangeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                ChangeDice();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                ChangeDice();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
