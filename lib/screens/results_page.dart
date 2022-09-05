import 'package:bmi_calculator/components/resuable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/Buttom_Button.dart';

import '../constants.dart';

class Results_page extends StatelessWidget {

  Results_page({required this.interpretation,required this.bmiresult,required this.resultText});

  final String bmiresult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          ),
          Expanded(
            flex: 5,
              child:ReusableCard(
              colour: kActivecolor,
                onPress: () {  },
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase()  ,
                      textAlign: TextAlign.center,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiresult,
                      textAlign: TextAlign.center,
                      style: kBMITextStyle,
                    ),
                    Text(
                     interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

              )
          ),
          BottomButton(
              onTap:(){
                Navigator.pop(context);
              },
              ButtonTitle: 'Re-calculate'),
        ],
      ),
    );
  }
}
