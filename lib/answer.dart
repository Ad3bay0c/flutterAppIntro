import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answer;
  Answer(this.answerHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        child: Text(answer),
        onPressed: answerHandler,
      ),
    );
  }
}
