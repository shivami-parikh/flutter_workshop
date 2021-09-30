import 'package:bmi_checker/app_brain.dart';
import 'package:bmi_checker/components/bottom_button.dart';
import 'package:bmi_checker/components/button_card.dart';
import 'package:bmi_checker/components/gender_card.dart';
import 'package:bmi_checker/components/reusable_card.dart';
import 'package:bmi_checker/project_constants.dart';
import 'package:bmi_checker/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum userGender { none, male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  userGender selectedGender = userGender.none;
  int height = 180;
  int weight = 70;
  int age = 30;
  bool isLongPress = false;

  void selectMale() {
    setState(() {
      selectedGender = userGender.male;
    });
  }

  void selectFemale() {
    setState(() {
      selectedGender = userGender.female;
    });
  }

  void addWeight() {
    setState(() {
      weight++;
    });
  }

  void subtractWeight() {
    setState(() {
      weight--;
    });
  }

  void addAge() {
    setState(() {
      age++;
    });
  }

  void subtractAge() {
    setState(() {
      age--;
    });
  }

  Future<void> addWeightOnLongPress() async {
    isLongPress = true;
    while (isLongPress) {
      addWeight();
      await Future.delayed(const Duration(milliseconds: 200));
    }
  }

  Future<void> subtractWeightOnLongPress() async {
    isLongPress = true;
    while (isLongPress) {
      subtractWeight();
      await Future.delayed(const Duration(milliseconds: 200));
    }
  }

  Future<void> addAgeOnLongPress() async {
    isLongPress = true;
    while (isLongPress) {
      addAge();
      await Future.delayed(const Duration(milliseconds: 200));
    }
  }

  Future<void> subtractAgeOnLongPress() async {
    isLongPress = true;
    while (isLongPress) {
      subtractAge();
      await Future.delayed(const Duration(milliseconds: 200));
    }
  }

  void stopOnLongPress() {
    isLongPress = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CHECKER'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  GenderCard(
                    cardText: "MALE",
                    cardIcon: FontAwesomeIcons.mars,
                    onPress: selectMale,
                    cardColour: selectedGender == userGender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                  GenderCard(
                    cardText: "FEMALE",
                    cardIcon: FontAwesomeIcons.venus,
                    onPress: selectFemale,
                    cardColour: selectedGender == userGender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                ], // children
              ),
            ),
            Expanded(
              flex: 1,
              child: ReusableCard(
                cardColour: kInactiveCardColor,
                cardChild: Column(
                  children: [
                    const Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        const Text(
                          "cm",
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                      max: 270,
                      min: 90,
                      divisions: 180,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ButtonCard(
                    cardText: "WEIGHT",
                    cardNumber: weight,
                    funcAdd: addWeight,
                    funcSubtract: subtractWeight,
                    funcAddLongPress: addWeightOnLongPress,
                    funcSubtractLongPress: subtractWeightOnLongPress,
                    funcLongPressStopped: stopOnLongPress,
                    unitText: "kg",
                  ),
                  ButtonCard(
                    cardText: "AGE",
                    cardNumber: age,
                    funcAdd: addAge,
                    funcSubtract: subtractAge,
                    funcAddLongPress: addAgeOnLongPress,
                    funcSubtractLongPress: subtractAgeOnLongPress,
                    funcLongPressStopped: stopOnLongPress,
                    unitText: "yrs",
                  ),
                ], // children
              ),
            ),
            BottomButton(
              buttonText: "calculate",
              onTap: () {
                AppBrain calc = AppBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      calc.calculateBMI(),
                      calc.getResult(),
                      calc.getSummary(),
                    ),
                  ),
                );
              }, //onTap
            ),
          ], //children
        ),
      ),
    );
  }
}
