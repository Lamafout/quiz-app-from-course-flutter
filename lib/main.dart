import 'package:flutter/material.dart';

import './quiz.dart';

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
      'answers': ['Ye..Yes, Button-waifu... Mrs Button-waifu!', 'Wha... WHAT?! No, God, I wantn\'t!']
    },
    {
      'questionText': 'Do you wanna lick my sweaty legs?',
      'answers': ['Yes! Give me your sweet legs, darling! UwU', 'Fkoff, girl!']
    },
    {
      'questionText': 'Where do you wanna be in my hot bed?',
      'answers': ['Up! 0_0', 'Down...', 'Outside! >_<']
    },
  ];

  void _answerQuestion(){
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
      body: (_questionIndex < _questionsList.length)? Quiz(_questionsList, _questionIndex, _answerQuestion)
      : const Center(child: Text('Thx for your dirty answers, boy!'),),
    ),);
  }
}