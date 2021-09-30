import 'package:bmi_checker/project_constants.dart';
import 'package:bmi_checker/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColour,
        scaffoldBackgroundColor: kBackgroundColour,
        sliderTheme: SliderTheme.of(context).copyWith(
          inactiveTrackColor: kSliderInactiveColour,
          activeTrackColor: Colors.white,
          overlayColor: kSliderThumbOverlay,
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
          thumbColor: kBottomContainerColour,
        ),
      ),
      home: const InputPage(),
    );
  }
}
