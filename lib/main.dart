import 'package:flutter/material.dart';
import 'package:some_random_app/result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());
// arrow abbreviation

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = [
    {
      'questionText': 'What is your favourite Color?',
      'answers': [
        {'text': 'Black', 'score': '10'},
        {'text': 'Red', 'score': '20'},
        {'text': 'Blue', 'score': '30'},
      ]
    },
    {
      'questionText': 'What is your favourite Animal?',
      'answers': [
        {'text': 'Tiger', 'score': '20'},
        {'text': 'Rabbit', 'score': '10'},
        {'text': 'Monkey', 'score': '30'},
      ]
    },
    {
      'questionText': 'What is your favourite Food?',
      'answers': [
        {'text': 'Food', 'score': '30'},
        {'text': 'Food', 'score': '20'},
        {'text': 'Food', 'score': '10'},
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void resetQuiz() {
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
            title: const Text('Rummaan is Trying'),
            backgroundColor: Colors.indigo,
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex)
              : Result(_totalScore, resetQuiz)),
    );
  }
}
