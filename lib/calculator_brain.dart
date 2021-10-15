import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;
  double _bmi;

  CalculatorBrain(this.weight, this.height);

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than a normal body weight. Try to excercise more. 🏋️‍♂️';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job! 🏆';
    } else {
      return 'You have a lower than a normal body weight. You can eat a bit more. 🍇';
    }
  }
}
