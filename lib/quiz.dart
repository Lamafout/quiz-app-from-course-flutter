import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questionsList;
  final int questionIndex;
  final VoidCallback answerQuestion;
  Quiz({required this.questionsList, required this.questionIndex, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Question(questionsList[questionIndex]['questionText']),

          ...(questionsList[questionIndex]['answers'] as List<String>).map((answer)  {
            return Answer(answer, answerQuestion);
          }).toList()

        ],);
  }
}