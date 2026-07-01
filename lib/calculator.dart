import 'dart:math';

import 'package:flutter/material.dart';
class Calculator {
  final int? height ;
  final int? weight;
  double _bmi=0;
  Calculator({required this.height,required this.weight});
  String calculateBMI(){
    double _bmi =weight! / pow(height!/100, 2);
   return _bmi.toStringAsFixed(1);
  }
  String getInterparetion(){
    if(_bmi>=25){
      return "You have a higher than normal body wight , try to excercise more ";
    }else if (_bmi >=18.5){
      return "You have a normal body weight";
    }else{
      return "You have a lower than normal body weight .you can eat a bit more ";
    }
  }
  String getResult(){
    if(_bmi>=25){
      return "Over Weight ";
    }else if (_bmi >=18.5){
      return "Normal";
    }else{
      return "under Weight ";
    }
  }
  }

