import 'dart:math';

class BmiCalculator {
  final int height;
  final int weight;
  double _bmi = 0;
  BmiCalculator({required this.height, required this.weight});

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "OverWeight";
    } else if (_bmi > 18) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getResultDetails() {
    if (_bmi >= 25) {
      return "You Have Higher Then Normal Body Weight. Try Exercise";
    } else if (_bmi > 18) {
      return "Great.!! Your BMI Is Perfect. Good Job Keep It Up";
    } else {
      return "Try To Gain Some Weight. You Are To Skiny";
    }
  }
}
