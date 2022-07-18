import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi = 0.0;

  CalculatorBrain(this.weight, this.height);

  String CalculateBMI() {
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi > 25) {
      return 'Overweight';
    }
    else if(_bmi > 18.5) {
      return 'normal';
    }
    else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if(_bmi > 25) {
      return 'Your  body weight is higher than normal.Try to exercise more';
    }
    else if(_bmi > 18.5) {
      return 'Your body weight is normal.Keep up the good work';
    }
    else {
      return 'Your  body weight is lower than normal.Try to eat a bit more';
    }
  }

}