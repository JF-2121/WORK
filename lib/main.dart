import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.purple.shade700,
        colorScheme: ColorScheme.dark(
          primary: Colors.red,
          surface: Colors.red,
        ),
        textTheme: TextTheme(
          bodySmall: TextStyle(color: Colors.white)
        ),
        
      ),
      home: InputPage(),
    );
  }
}


