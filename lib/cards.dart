import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
class Cards extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final VoidCallback? onPress;


  const Cards({this.color,this.child,this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(17),
        decoration: BoxDecoration(
            color: color ?? kActiveCardColor,
            borderRadius: BorderRadius.circular(18)
        ),
      ),
    );
  }
}