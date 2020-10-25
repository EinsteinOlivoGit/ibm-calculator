import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calcualteBMI() {
    double kilogram = weight * 0.453592;
    _bmi = kilogram / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    String status;
    if (_bmi >= 25) {
      status = 'Overweight';
    } else if (_bmi > 18.5) {
      status = 'Normal';
    } else {
      status = 'Underweight';
    }
    return status;
  }

  String getInterpretation() {
    String interpretation;
    if (_bmi >= 25) {
      interpretation =
          'You have a higher then normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      interpretation = 'You have a normal body weight. Good job!';
    } else {
      interpretation =
          'You have a lower than normal body weight. You can eat a bit more.';
    }
    return interpretation;
  }
}
