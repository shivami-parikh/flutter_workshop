import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function reset;
  Result(this.finalScore, this.reset);

  String get resultPhrase {
    String resultText = "You did it!";
    if (finalScore <= 3) {
      resultText = "You are innocent";
    } else if (finalScore <= 6) {
      resultText = "You are popular";
    } else {
      resultText = "You are...strange?!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: reset,
              child: Text("Reset"),
            )
          ],
        ),
      ),
    );
  }
}
