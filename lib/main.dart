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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
            Container(            
            width: 100.0,
            color: Colors.red,
            ),
            
            const SizedBox(
              width: 100,
            ),
          
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.yellow,
            ),
           
        
            Container(
              margin: const EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
              width: 100.0,
              height: 100.0,
              color: Colors.green,
            ),

            const SizedBox(
              width: 100,
            ),
          
            Container(            
            width: 100.0,
            color: Colors.blue,
            ),

            
          ],
          ),
        ),
      ),
    );
  }
}  
