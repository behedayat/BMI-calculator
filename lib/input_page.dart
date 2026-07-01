import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart' hide Icons;
import 'package:bmi_calculator/cards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/icons.dart';
import 'package:bmi_calculator/constant.dart';

import 'Bottom_Button.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height=140;
  int age=20;
  int weight=60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Center(child: Text("BMI Calculator")),
          leading: Icon(FontAwesomeIcons.list),
        ),
        body: Column(children: [
          Expanded(child: Row(
            
            children: [
            Expanded(child: Expanded(
              child: Cards(
                onPress: (){
                  setState(() {
                    selectedGender=Gender.male;
                  });
                },
                color:selectedGender==Gender.male ? kActiveCardColor:kInActiveColor,
                child: Icons(
                    icon: FontAwesomeIcons.mars,
                    text:'MALE'
                ),
              ),
            )),

              Expanded(child: Cards(
                onPress: (){
                  setState(() {
                    selectedGender=Gender.female;
                  });
                },
                color:selectedGender==Gender.female ? kActiveCardColor:kInActiveColor,
                child: Icons(

                    icon: FontAwesomeIcons.venus,
                    text:'FEMALE'
                ),
              )),

          ],)),
          Expanded(child:  Cards(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Height",style:kTextDesign),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                Text(height.toString(),style:kNumberDesign),
                Text("cm" ,style: kTextDesign),
              ],),
              SliderTheme(data: SliderTheme.of(context).copyWith(
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                activeTrackColor: Colors.white,
                inactiveTrackColor: Colors.grey,
                thumbColor: Color(0xFFEB1555),
              ), child:
              Slider(min:120,max:250,
                  value: height.toDouble(), onChanged: (double value){
                setState(() {
                  height=value.toInt();
                });

                  })),
            ],),
          )),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Expanded(child:  Cards(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("WEIGHT",style: kTextDesign),
                  Text(weight.toString(),style: kNumberDesign,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
    children: [

                ElevatedButton(onPressed: (){
                  setState(() {
                    weight--;
                  });
                }, style: ElevatedButton.styleFrom(shape: CircleBorder(),
                padding: EdgeInsets.all(20),backgroundColor: Color(0xFF1b2033),foregroundColor:  Color(0xFF7d808f)),
                    child: Icon(FontAwesomeIcons.minus)),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        weight++;
                      });
                    },
                        style: ElevatedButton.styleFrom(shape: CircleBorder(),
                            padding: EdgeInsets.all(20),backgroundColor: Color(0xFF1b2033),foregroundColor:  Color(0xFF7d808f),),child: Icon(FontAwesomeIcons.plus)),


                  ],)
                ],
              ),
            )),
            Expanded(child:  Cards(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("AGE",style: kTextDesign),
                  Text(age.toString(),style: kNumberDesign,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        age--;
                      });
                    },
                        style: ElevatedButton.styleFrom(shape: CircleBorder(),
                            padding: EdgeInsets.all(20),backgroundColor: Color(0xFF1b2033),foregroundColor:  Color(0xFF7d808f),),child: Icon(FontAwesomeIcons.minus)),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        age++;
                      });
                    }, style: ElevatedButton.styleFrom(shape: CircleBorder(),
                        backgroundColor: Color(0xFF1b2033),foregroundColor:  Color(0xFF7d808f),
                        padding: EdgeInsets.all(20)), child: Icon(FontAwesomeIcons.plus)),


                  ],)
                ],
              ),
            ))
          ],)
          ),
          BottomButton(title: "CALCULATE",ontap: (){
            Calculator calculator=Calculator(height: height, weight: weight);
            Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
              bmiResult: calculator.calculateBMI(),
              resultText: calculator.getResult(),
              interperation: calculator.getInterparetion(),
            )));
          },)
        ],)

    );
  }
}

