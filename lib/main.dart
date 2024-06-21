import 'package:flutter/material.dart';

void main (){
  runApp(
    const MyApp()
  );
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 242, 218),
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/12.webp'),
              ),
              Text(
                'JF-21',
                style: TextStyle(
                  fontFamily: 'Playwrite',
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'The Developer',
                style: TextStyle(
                  height: 2,
                  fontFamily: 'Playwrite',
                  fontSize: 20,
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
           ),
        ),
      ),
    );
  }
}  
