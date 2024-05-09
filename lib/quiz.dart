import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> _questionsList;
  final int _questionIndex;
  final VoidCallback _answerQuestion;
  Quiz(this._questionsList, this._questionIndex, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Question(_questionsList[_questionIndex]['questionText']),

          ...(_questionsList[_questionIndex]['answers'] as List<String>).map((answer)  {
            return Answer(answer, _answerQuestion);
          }).toList()

        ],);
  }
}