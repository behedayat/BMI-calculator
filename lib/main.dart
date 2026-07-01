import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        appBarTheme: AppBarThemeData(
          backgroundColor: Color(0xFF090C22),
          foregroundColor: Colors.white,


        ),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
      home: InputPage(),
    );
  }
}






