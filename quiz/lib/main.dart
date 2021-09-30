import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';
import 'package:quiz/result.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  //variables
  static const _questions = [
    {
      "question": "What's your favourite color?",
      "answers": ["Black", "Red", "Blue"],
    },
    {
      "question": "What's your favourite animal?",
      "answers": ["Lion", "Elephant", "Rabbit"],
    },
    {
      "question": "What's your favourite flower?",
      "answers": ["Rose", "Lily", "Orchids"],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
      }
    });
    _totalScore += score;
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: (_questionIndex < _questions.length)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Question(_questions[_questionIndex]['question'] as String),
                  Answer(
                      _answerQuestion,
                      (_questions[_questionIndex]['answers']
                          as List<String>)[0],
                      1),
                  Answer(
                      _answerQuestion,
                      (_questions[_questionIndex]['answers']
                          as List<String>)[1],
                      2),
                  Answer(
                      _answerQuestion,
                      (_questions[_questionIndex]['answers']
                          as List<String>)[2],
                      3),
                ], //children
              )
            : Result(_totalScore, _reset),
      ),
    );
  }
}
