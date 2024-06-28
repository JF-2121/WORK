import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {

  ReusableCard({required this.colur, required this.cardChild, required this.onPress});

  final Color colur; 
  final Widget cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
        color: colur,
        borderRadius: BorderRadius.circular(15)),
        ),
    );
  }
}

