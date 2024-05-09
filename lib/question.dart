import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(questionText, 
        style: TextStyle(
        color: Color.fromARGB(255, 11, 6, 157), 
        fontSize: 23), 
        textAlign: TextAlign.center,),
      width: double.infinity,
      margin: EdgeInsets.only(top: 15.0, bottom: 15.0),);
  }
}