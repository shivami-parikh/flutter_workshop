import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("I AM POOR"),
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: Image(
            image: AssetImage("assets/images/poor.jpeg"),
          ),
        ),
      ),
    ),
  );
}
