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
  int leftDiceNbr = 5;
  int rightDiceNbr = 2;
  @override
  Widget build(BuildContext context) {

    void getnbr() {
      setState(() {
        leftDiceNbr = Random().nextInt(6) + 1;
                  rightDiceNbr = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                getnbr();
              },
              child: Image.asset('images/dice$leftDiceNbr.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                getnbr();
              },
              child: Image.asset('images/dice$rightDiceNbr.png'),
            ),
          ),
        ],
      ),
    );
  }
}
