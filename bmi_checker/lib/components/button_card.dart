import 'package:bmi_checker/components/rect_circle_button.dart';
import 'package:bmi_checker/components/reusable_card.dart';
import 'package:bmi_checker/project_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonCard extends StatelessWidget {
  final String cardText;
  final int cardNumber;
  final VoidCallback funcAdd;
  final VoidCallback funcSubtract;
  final String unitText;
  final VoidCallback funcAddLongPress;
  final VoidCallback funcSubtractLongPress;
  final VoidCallback funcLongPressStopped;

  const ButtonCard(
      {required this.cardText,
      required this.funcAdd,
      required this.funcSubtract,
      required this.cardNumber,
      required this.unitText,
      required this.funcAddLongPress,
      required this.funcSubtractLongPress,
      required this.funcLongPressStopped,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ReusableCard(
        cardColour: kInactiveCardColor,
        cardChild: Column(
          children: [
            Text(
              cardText,
              style: kLabelTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  cardNumber.toString(),
                  style: kNumberTextStyle,
                ),
                Text(
                  unitText,
                  style: kLabelTextStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundIconButton(funcSubtract, FontAwesomeIcons.minus,
                    funcSubtractLongPress, funcLongPressStopped),
                const SizedBox(
                  width: 15.0,
                ),
                RoundIconButton(funcAdd, FontAwesomeIcons.plus,
                    funcAddLongPress, funcLongPressStopped),
              ],
            ),
          ], //children
        ),
      ),
    );
  }
}
