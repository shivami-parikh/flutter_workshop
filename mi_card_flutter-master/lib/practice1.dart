import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                child: Text("Hello"),
                color: Colors.red,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    child: Text(
                      "Hi there",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black,
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    child: Text(
                      "Too much",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.brown,
                  ),
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                child: Text("Hello Again"),
                color: Colors.green,
              ),
            ], //Children
          ),
        ),
      ),
    );
  }
}
