import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom_button.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  
  ResultsPage({required this.bmiResults, required this.interpretation, required this.resultText});

  final String bmiResults;
  final String resultText;
  final String interpretation;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Ergebnis',
                style: kTitleTextStyle,),
            )
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                onPress: () {
                  
                },
                colur: kInactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResults,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                    ]
                ),
              ),
            ), 
          BottomButton(onTap: () {
              Navigator.pop(context);
          }, 
          buttonTitle: 'N E U - B E R E C H N E N'),
        ],
      ),
    );
  }
}
