import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Answer extends StatelessWidget {

  final String answerText;
  final onPressedFunc;

  Answer(this.answerText, this.onPressedFunc);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: 
        ButtonStyle(
          overlayColor: MaterialStateProperty.all(Color.fromARGB(255, 81, 74, 146)),
          backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
          foregroundColor: MaterialStateProperty.all(Colors.white),),
        
        onPressed: onPressedFunc,
        
        child: Text(answerText),
      ),
    );
  }
}