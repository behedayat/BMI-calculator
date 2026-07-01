import 'package:bmi_calculator/Bottom_Button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/cards.dart';
import 'constant.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult,resultText,interperation;
 ResultsPage({required this.bmiResult,required this.resultText ,required this.interperation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI Calculator")),
        leading: Icon(FontAwesomeIcons.list),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
        Expanded(
            flex :1,child: Text("Your Result",style: kTitleTextStyle,)),
          Expanded(
              flex :5,child: Cards(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text(resultText!.toUpperCase(),style :kResultTxetStyle),
                Text(bmiResult!,style:kBMITextStyle),
                Column(children: [Text("Normal bmi range",style:kGreyBodyTextStyle),
                Text("18.5 25 kg/k2",style:kGBodyTextStyle)
                  ,],),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(interperation!,style: kGBodyTextStyle,
                  textAlign: TextAlign.center,),
                ),
            ],)
          )
          ),
          BottomButton(title: "Re-CALCULATE", ontap: (){
            Navigator.pop(context);
          })


      ],)
    );
  }
}
