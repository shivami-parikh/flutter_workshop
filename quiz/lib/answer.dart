import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;
  final int score;

  Answer(this.answerHandler, this.answerText, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          this.answerHandler(this.score);
        },
        child: Text(this.answerText),
      ),
    );
  }
}
