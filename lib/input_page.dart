import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Colors.black;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                    child: ReusableCard(
                    colur: Colors.black54,),
                       ),
                    ],
                  ),
                ),
                 Expanded(
                    child: ReusableCard(
                    colur: Colors.black54,),
                       ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                    child: ReusableCard(
                    colur: activeCardColor,
                    ),
                       ),
                       Expanded(
                    child: ReusableCard(
                    colur: activeCardColor,
                    ),
                       ),
                    ],
                  )    
                )              
              ]
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      )
    ); 
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard({required this.colur});

  final Color colur; 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
      color: colur,
      borderRadius: BorderRadius.circular(15)),
      );
  }
}

