import 'package:flutter/material.dart';
import 'package:flutter_application_1/results_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
import 'calculator_brain.dart';
import 'results_page.dart';


enum Gender {
  male,
  female,
  empty,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

   Gender selectedGender = Gender.empty;
   int height = 175;
   int weight = 60;
   int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI',
            style: kLargeButtonText,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                      child: ReusableCard(
                        
                        onPress: (){
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        //comment

                        colur: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,  
                        cardChild: IconContent(
                        icon: FontAwesomeIcons.beerMugEmpty,
                        label: 'MANN',),
                        ),
                       ),
                    ],
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                    onPress: () {
                      setState(() {
                            selectedGender = Gender.female;
                      });
                    },
                    colur: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mugHot,
                      label: 'FRAU',),
                    ),
                  ),
              ]
            )
          ),
          Expanded(
          child: ReusableCard(
            onPress: () {
              
            },
            colur: kInactiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HÖHE',
                  style: kLabelTextStyle,
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyle, 
                    ),
                    Text(
                      'cm',
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape: 
                      RoundSliderThumbShape(enabledThumbRadius: 20.0),
                    overlayShape: 
                      RoundSliderOverlayShape(overlayRadius: 30)
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 150.0,
                    max: 240.0,
                    inactiveColor: Colors.grey,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
          SizedBox(
            height: 300,
            child: Row(
              children: [
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          
                        },
                        colur: kInactiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'GEWICHT',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: FontAwesomeIcons.minus,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colur: kInactiveCardColor, 
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ALTER',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: FontAwesomeIcons.minus,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ), 
                        onPress: () {
                          
                        },
                      ),                      
                  )
              ],
            ),
          ),                 
          BottomButton(buttonTitle: 'B E R E C H N E !',
          onTap: () {
            
            CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

            Navigator.push(context, 
              MaterialPageRoute(builder: (context) => ResultsPage(
                bmiResults: calc.calculateBMI(),
                resultText: calc.getResults(),
                interpretation: calc.getInterpretation(),
              )));
          },)
        ],
      )
    ); 
  }
}



