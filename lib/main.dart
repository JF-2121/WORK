import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


//does not work on the c laptop due to not high enough sec lvl
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: OutlinedButton(
              onPressed: (){
                final player = AudioCache();
              }, child: Text('ClickMe'),
              )),
        ),
      ),
    );
  }
}