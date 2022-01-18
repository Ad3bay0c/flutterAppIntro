import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function selectHandler;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) =>
                  Answer(() => selectHandler(answer['score']), answer['text']))
              .toList(),
        ],
      ),
    );
  }
}
