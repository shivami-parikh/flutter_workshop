import 'package:bmi_checker/project_constants.dart';
import 'package:bmi_checker/components/reusable_card.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String cardText;
  final IconData cardIcon;
  final VoidCallback onPress;
  final Color cardColour;

  const GenderCard(
      {required this.cardText,
      required this.cardIcon,
      required this.onPress,
      required this.cardColour,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: onPress,
        child: ReusableCard(
          cardColour: cardColour,
          cardChild: Column(
            children: [
              Icon(
                cardIcon,
                size: 80.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                cardText,
                style: kLabelTextStyle,
              ),
            ], //children
          ),
        ),
      ),
    );
  }
}
