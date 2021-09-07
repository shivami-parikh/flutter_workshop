import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dice'),
          ),
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

  Widget buildImageButtons(Image diceImage) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: diceImage,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: changeDice,
        child: Row(
          children: [
            buildImageButtons(Image.asset("images/dice$leftDice.png")),
            buildImageButtons(Image.asset("images/dice$rightDice.png")),
          ],
        ),
      ),
    );
  }
}
