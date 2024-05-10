import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetFunc;

  Result(this.resultScore, this.resetFunc);

  String get resultText {
    String res;
    if (this.resultScore >= 2){
      res = 'veeeery boooring, umh...';
    }
    else{
      res = 'pussy boy! Congrats!';
    }

    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      width: 300,
      height: 250,
      margin: EdgeInsets.only(
        bottom: 100
      ),
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Color.fromARGB(255, 36, 42, 147),
      ),

        child: Column(
          children: [
            Text(
              'It was final question, boy! Your result: you are ' + resultText,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.only(top: 30),

                child: FloatingActionButton(
                  onPressed: resetFunc,
                  child: Text(
                    'Restart Quiz!'
                  ),
                ),
              )
          ],
        ),
    )
    );
  }
}