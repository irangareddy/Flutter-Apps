import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.weight,this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {

    _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);

  }

  String getCategory() {

    if(_bmi>=25.0) {
      return 'OVERWEIGHT';
    } else if(_bmi>=18.0) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }

  }

    String getMessage() {

    if(_bmi>=25.0) {
      return 'You are Overweight then a normal person.Go for a walk buddy.';
    } else if(_bmi>=18.0) {
      return 'You have a Normal BMI.You are doing great';
    } else {
      return 'You are Underweight then a normal person.Eat more.';
    }

  }

  

}