import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final List<String> answers;
  final Function selectHandler;

  Quiz(this.questionText, this.answers, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questionText),
          ...answers
              .map((answer) => Answer(selectHandler, answer))
              .toList(),
        ],
      ),
    );
  }
}
