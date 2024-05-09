import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String  questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(questionText, 
        style: TextStyle(
        color: Color.fromARGB(255, 11, 6, 157), 
        fontSize: 18), 
        textAlign: TextAlign.center,),
      width: double.infinity,);
  }
}