import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Answer extends StatelessWidget {

  final String answerText;
  final VoidCallback onPressedFunc;

  Answer(this.answerText, this.onPressedFunc);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: ElevatedButton(
        style: 
        ButtonStyle(
          overlayColor: MaterialStateProperty.all(const Color.fromARGB(255, 81, 74, 146)),
          backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0))),
        
        onPressed: onPressedFunc,
        
        child: Text(
          answerText, 
          style: const TextStyle(
            fontSize: 15),
            ),
      ),
    );
  }
}