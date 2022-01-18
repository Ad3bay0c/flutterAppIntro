import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final Function resetHandler;
  Result(this.total, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (total <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (total <= 12) {
      resultText = 'Pretty likeable!';
    } else if (total <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontFamily: '36', fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlineButton(
              onPressed: resetHandler,
              textColor: Colors.blue,
              borderSide: BorderSide(color: Colors.blue),
              child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
