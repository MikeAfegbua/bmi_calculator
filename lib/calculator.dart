import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});
  final int? height;
  final int? weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (double.parse(calculateBMI()) >= 25) {
      return 'OverWeight';
    } else if (double.parse(calculateBMI()) >= 18.5 &&
        double.parse(calculateBMI()) < 25) {
      return 'Normal';
    } else if (double.parse(calculateBMI()) < 18.5) {
      return 'Underweight';
    } else {
      return 'Not sure!';
    }
  }

  String getAdvice() {
    if (double.parse(calculateBMI()) >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    } else if (double.parse(calculateBMI()) >= 18.5 &&
        double.parse(calculateBMI()) < 25) {
      return 'You have a normal body weight. Enjoy!';
    } else if (double.parse(calculateBMI()) < 18.5) {
      return 'You have a lower than normal body weight. You should try to eat more!';
    } else {
      return 'i dont know';
    }
  }
}
