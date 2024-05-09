import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  
  var questionsList = [
    {
      'questionText': 'Do you wanna slap my cute ass?',
      'answers': ['Ye..Yes, Button-waifu... Mrs Button-waifu!', 'Wha... WHAT?! No, God, I wantn\'t!']
    },
    {
      'questionText': 'Do you wanna lick my sweaty legs?',
      'answers': ['Yes! Give me your sweet legs, darling! UwU', 'Fkoff, girl!']
    },
    {
      'questionText': 'Where do you wanna be in my hot bed?',
      'answers': ['Up! 0_0', 'Down...', 'Outside!']
    },
  ];

  void _answerQuestion(){
    if (_questionIndex + 1 < 3){
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context){

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Is is text in the Text Widget in the Scaffold Widget in the MaterialApp Widget LOL', 
          style: TextStyle(
            color: Colors.white)), 
        backgroundColor: Color.fromRGBO(65, 65, 179, 1),),
      body: Column(
        children: <Widget>[
          Question(questionsList[_questionIndex]['questionText']),

          ...(questionsList[_questionIndex]['answers'] as List<String>).map((answer)  {
            return Answer(answer, _answerQuestion);
          }).toList()

        ],),
    ),);
  }
}