import 'dart:math';

class AppBrain {
  AppBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi <= 16) {
      return ("skinny");
    } else if (_bmi <= 18.5) {
      return ("underweight");
    } else if (_bmi <= 25) {
      return ("healthy");
    } else if (_bmi <= 30) {
      return ("overweight");
    } else {
      return ("obese");
    }
  }

  String getSummary() {
    if (_bmi <= 16) {
      return ("You have a very low body weight. Try to gain weight as soon as you can.");
    } else if (_bmi <= 18.5) {
      return ("You have a lower than normal body weight. Try to gain some weight.");
    } else if (_bmi <= 25) {
      return ("You have a normal body weight. Well done.");
    } else if (_bmi <= 30) {
      return ("You have a higher than normal body weight. Try to lose some weight.");
    } else {
      return ("You have a very high body weight. Try to lose weight as soon as you can.");
    }
  }
}
