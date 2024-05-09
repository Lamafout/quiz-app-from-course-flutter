import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createElement
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;

  void _answerQuestion(){
    if (_questionIndex + 1 < 2){
      setState(() {
        _questionIndex++;
      });
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context){
    var questionsList = <String>[
      'Do you wanna slap my cute ass?',
      'Do you wanna lick my sweaty legs?'
    ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Is is text in the Text Widget in the Scaffold Widget in the MaterialApp Widget LOL', 
          style: TextStyle(
            color: Colors.white)), 
        backgroundColor: Color.fromRGBO(65, 65, 179, 1),),
      body: Column(
        children: <Widget>[
          Question(questionsList[_questionIndex]),
          ElevatedButton(
            child: Text('Click me, daddy UwU'), 
            onPressed: _answerQuestion,),
          ElevatedButton(
            onPressed: _answerQuestion, 
            child: Text('No, pls, click to me, my Master! 0_0')),

          Answer(_answerQuestion)
        ],),
    ),);
  }
}