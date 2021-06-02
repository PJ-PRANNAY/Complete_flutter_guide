import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQusetion;

  const Quiz(
      {Key key,
      @required this.questions,
      @required this.answerQusetion,
      @required this.questionIndex})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQusetion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
