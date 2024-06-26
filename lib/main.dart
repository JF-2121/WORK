import 'package:flutter/material.dart';
import 'dart:math';

void main (){
  return runApp(
    MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dice'),
        backgroundColor:  Colors.grey,
      ),
      body: const DicePage(),
    ),
  )
  );
} 
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1; 
  int rightDiceNumber = 1; 

  void changeDiceFace() {
    setState(() {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [ 
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(0.1),
                  side: const BorderSide(width: 0.1, color: Colors.transparent), // Custom border width and color
                ),
                iconAlignment: IconAlignment.end,
                onPressed: () {
                  setState(() {
                    changeDiceFace();
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(0.1),
                  side: const BorderSide(width: 0.1, color: Colors.transparent), // Custom border width and color
                ),
                iconAlignment: IconAlignment.end,
                onPressed: () {
                  setState(() {
                    changeDiceFace();
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
             ),
          ),
        ],
      ),
    );
  }
}