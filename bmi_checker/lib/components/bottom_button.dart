import 'package:bmi_checker/project_constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;

  const BottomButton({
    required this.buttonText,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: kBottomContainerHeight,
      child: Center(
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            primary: kBottomContainerColour,
            minimumSize: const Size(
              double.infinity,
              double.infinity,
            ),
          ),
          child: Text(
            buttonText.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              letterSpacing: 3.0,
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
