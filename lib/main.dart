import 'package:flutter/material.dart';

void main (){
  return runApp(
    MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dice'),
        backgroundColor:  Colors.grey,
      ),
    ),
  )
  );
} 