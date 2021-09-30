import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          title: const Center(
            child: Text('Math Practice'),
          ),
          backgroundColor: Colors.orange,
        ),
        body: const MathPage(),
      ),
    ),
  );
}

class MathPage extends StatefulWidget {
  const MathPage({Key? key}) : super(key: key);

  @override
  _MathPageState createState() => _MathPageState();
}

class _MathPageState extends State<MathPage> {
  int num1 = Random().nextInt(500);
  int num2 = Random().nextInt(500);
  String operator = '+';
  List<String> operatorList = ['+', '-'];

  static const allTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 50,
    fontWeight: FontWeight.w900,
  );

  void changeNumbers() {
    setState(() {
      num1 = Random().nextInt(500);
      num2 = Random().nextInt(500);
      operator = operatorList[Random().nextInt(2)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                num1.toString(),
                style: allTextStyle,
              ),
              const SizedBox(
                width: 30.0,
              ),
              Text(
                operator,
                style: allTextStyle,
              ),
              const SizedBox(
                width: 30.0,
              ),
              Text(
                num2.toString(),
                style: allTextStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          ElevatedButton(
            onPressed: changeNumbers,
            child: const Text("Change"),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(200.0, 50.0),
              primary: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
