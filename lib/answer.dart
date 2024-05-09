import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final onPressedFunc;

  const Answer(this.onPressedFunc);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
            color: Colors.white), 
          backgroundColor: Colors.blue[900]),
        
        onPressed: onPressedFunc,
        
        child: const Text('Answer 1'),
      ),
    );
  }
}