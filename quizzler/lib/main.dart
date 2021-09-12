import 'package:flutter/material.dart';

import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizzler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Quiz(title: 'Quiz'),
    );
  }
}

class Quiz extends StatefulWidget {
  Quiz({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Icon> _scoreList = [];
  int _score = 0;

  void nextQuestion(bool buttonClicked) {
    setState(() {
      if (buttonClicked == quizBrain.getAnswerValue()) {
        _score++;
        _scoreList.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        _scoreList.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
      quizBrain.nextQuestion();
    });
  }

  void reset() {
    setState(() {
      _scoreList.clear();
      quizBrain.resetQuestionNumber();
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: quizBrain.isFinished()
                      ? Text(
                          "Your Score is: $_score/14",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        )
                      : Text(
                          quizBrain.getQuestionText(),
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (quizBrain.isFinished()) ...[
                      ElevatedButton(
                        onPressed: reset,
                        child: Text(
                          "Retry",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ] else ...[
                      ElevatedButton(
                        onPressed: () {
                          nextQuestion(true);
                        },
                        child: Text(
                          "True",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          nextQuestion(false);
                        },
                        child: Text(
                          "False",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ], //children
                ),
              ),
              Row(
                children: _scoreList,
              )
            ],
          ),
        ),
      ),
    );
  }
}
