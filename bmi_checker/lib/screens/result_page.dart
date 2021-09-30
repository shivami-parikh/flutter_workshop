import 'package:bmi_checker/components/bottom_button.dart';
import 'package:bmi_checker/project_constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(this.bmi, this.bmiText, this.bmiSummary, {Key? key})
      : super(key: key);

  final String bmi;
  final String bmiText;
  final String bmiSummary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "BMI CHECKER",
          ),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "Result",
                textAlign: TextAlign.center,
                style: kResultHeadingTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ColoredBox(
              color: kInactiveCardColor,
              child: Padding(
                padding: kResultPagePadding,
                child: Wrap(
                  spacing: double.infinity,
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.spaceAround,
                  children: [
                    Text(bmiText.toUpperCase(), style: kResultMainTextStyle),
                    Text(bmi, style: kNumberTextStyle),
                    Text(bmiSummary,
                        style: kResultSummaryTextStyle,
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            buttonText: "re-calculate",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
