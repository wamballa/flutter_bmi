import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / (pow(height / 100, 2));
    print("Calculate BMI " + _bmi.toString());

    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25)
      return 'You fat fuck';
    else if (_bmi > 18)
      return 'You normal fuck';
    else
      return 'You skinny fuck';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'Stop eating';
    else if (_bmi > 18)
      return 'Carry on eating as you are';
    else
      return 'Start eating more';
  }
}
