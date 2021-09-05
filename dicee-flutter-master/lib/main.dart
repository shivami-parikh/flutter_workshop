import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
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
  int leftDice = 1;
  int rightDice = 2;

  void changeDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: changeDice,
        child: Row(
          children: [
            Image.asset("images/dice$leftDice.png"),
            Image.asset("images/dice$rightDice.png"),
          ]
              .map(
                (e) => Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: e,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
