import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;
  
  static const _questionsList = [
  {
    'questionText': 'Do you wanna slap my cute ass?',
    'answers': [
      {'text': 'Ye..Yes, Button-waifu... Mrs Button-waifu!', 'score': 0},
      {'text': 'Wha... WHAT?! No, God, I wantn\'t!', 'score': 1}
    ]
  },
  {
    'questionText': 'Do you wanna lick my sweaty legs?',
    'answers': [
      {'text': 'Yes Give me your sweet legs, darling UwU', 'score': 0},
      {'text': 'Fkoff, girl!', 'score': 2}
    ]
  },
  {
    'questionText': 'Where do you wanna be in my hot bed?',
    'answers': [
      {'text': 'Up 0_0', 'score': 0},
      {'text': 'Down...', 'score': -1},
      {'text': 'Outside >_<', 'score': 1}
    ]
  },
];

  var _totalScore = 0;

  void _answerQuestion(int score){
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text('Is is text in the Text Widget in the Scaffold Widget in the MaterialApp Widget LOL', 
          style: TextStyle(
            color: Colors.white)), 
        backgroundColor: Color.fromRGBO(65, 65, 179, 1),),
      body: (_questionIndex < _questionsList.length)? Quiz(questionsList: _questionsList, questionIndex: _questionIndex, answerQuestion: _answerQuestion,)
      : Result(_totalScore)
    ),);
  }
}