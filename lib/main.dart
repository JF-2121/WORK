import 'package:flutter/material.dart';

void main (){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 80, 80, 80),
        appBar: AppBar(
          title: const Text('@Meh'),
          backgroundColor: Colors.redAccent,
          ),
          body:  const Center(
            child: Image(
              image: AssetImage('images/diamond.png')
            ),
          ),
      )
    )
  );
} 
