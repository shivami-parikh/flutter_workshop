import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColour;
  final Widget cardChild;

  const ReusableCard(
      {required this.cardColour, required this.cardChild, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [cardChild], //children
      ),
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cardColour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
