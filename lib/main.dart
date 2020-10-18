import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Homepage(),
));

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
  var _questionNumber = 0;
  var _totalscore = 0;

  void _questionanswer(int score) {
    _totalscore += score;
    setState(() {
      _questionNumber = _questionNumber + 1;
    });
    if (_questionNumber < _questions.length) {
      print("more");
    } else {
      print("ot");
    }
  }

  void _resetbutton() {
    setState(() {
      _totalscore = 0;
      _questionNumber = 0;
    });
  }

  var _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15.5, color: Colors.blueAccent),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: _questionNumber < _questions.length
          ? Container(
        color: Colors.lightGreenAccent,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Quiz(questions: _questions,
                questionNumber: _questionNumber,
                questionanswer: _questionanswer),
          ],
        ),
      )
          : Result(_totalscore, _resetbutton),
    );
  }
}
