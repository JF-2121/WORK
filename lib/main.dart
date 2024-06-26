import 'package:flutter/material.dart';
 

void main (){
  return runApp(
    MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor:  Colors.grey,
      ),
      body: DicePage(),
    ),
  )
  );
} 

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [ 
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(0.1),
                  side: BorderSide(width: 0.1, color: Colors.transparent), // Custom border width and color
                ),
                iconAlignment: IconAlignment.end,
                onPressed: () {
                  debugPrint('Recieved click left');
                } ,
                child: Image.asset('images/dice1.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(0.1),
                  side: BorderSide(width: 0.1, color: Colors.transparent), // Custom border width and color
                ),
                iconAlignment: IconAlignment.end,
                onPressed: () {
                  debugPrint('Recieved click right');
                } ,
                child: Image.asset('images/dice1.png')),
       ),
          ),
        ],
      ),
    );
  }
}

