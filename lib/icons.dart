import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
class Icons extends StatelessWidget {
  final IconData? icon;
  final String? text;
  Icons({this.icon , this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon ,size :40,color: Colors.white,),
        SizedBox(height: 15,),
        Text(text!,style: kTextDesign),
      ],
    );
  }
}