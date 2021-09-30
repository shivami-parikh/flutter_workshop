import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text('Dice'),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1 = 384;
  int dice2 = 345;
  List<int> dice1List = [384, 483, 186, 285, 681, 780];
  List<int> dice2List = [345, 741, 642, 147, 543, 840];

  void changeDice() {
    setState(() {
      dice1 = dice1List[Random().nextInt(6)];
      dice2 = dice2List[Random().nextInt(6)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: changeDice,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dice1.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 70,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              width: 50.0,
            ),
            Text(
              dice2.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 70,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
