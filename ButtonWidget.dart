import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({@ required this.cardText,@ required this.color,@ required this.textColor});
  final textColor;
  final cardText;
  final color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.only(left: 22.0,right: 22.0,top: 10.0,bottom:10.0),
      margin: EdgeInsets.all(10.0),
      child:Text(
        '$cardText',
        style: TextStyle(
          color: textColor,
          fontSize: 35.0,
          fontFamily:'Roboto',
        ),
      ) ,
    );
  }
}