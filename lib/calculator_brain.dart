import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
    
    CalculatorBrain({required this.height, required this.weight});
    
    final int height;
    final int weight;

    late double _bmi;

    String calculateBMI(){
      _bmi = weight / pow(height/100, 2);
      return _bmi.toStringAsFixed(1);
    }

    String getResults() {
      if (_bmi >= 25){
        return 'Zu fät';
      } else if (_bmi > 18.5) {
        return 'Normale';
      } else {
        return 'Musst mehr esse !';
      }
    }

    String getInterpretation() {
      if (_bmi >= 25){
        return 'Lauf Mehr dikker';
      } else if (_bmi > 18.5) {
        return 'Alles Entspannte';
      } else {
        return 'Musst mehr esse !, fr bruder';
      }
    }

}

