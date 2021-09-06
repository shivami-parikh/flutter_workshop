import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Magic 8 ball"),
          backgroundColor: Colors.deepOrange,
        ),
        body: MagicBall(),
        backgroundColor: Colors.orange,
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballImageNumber = 1;

  void changeBall() => setState(() {
        ballImageNumber = Random().nextInt(5) + 1;
      });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Image.asset("images/ball$ballImageNumber.png"),
        onTap: changeBall,
      ),
    );
  }
}
