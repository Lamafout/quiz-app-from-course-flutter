import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultText {
    String res;
    if (this.resultScore >= 2){
      res = 'pussy boy! Congrats!';
    }
    else{
      res = 'veeeery boooring, umh...';
    }

    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      width: 300,
      height: 200,
      margin: EdgeInsets.only(
        bottom: 100
      ),
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Color.fromARGB(255, 36, 42, 147),
      ),

      child: Center(
        child: Text(
          'It was final question, boy! Your result: you are ' + resultText,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
          ),
      ),
    )
    );
  }
}