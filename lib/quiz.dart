import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final Function questionanswer;
  final int questionNumber;
  Quiz({
    @required this.questions,
    @required this.questionNumber,
    @required this.questionanswer ,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionNumber]['questionText'],
        ),
        ...(questions[questionNumber]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(()=>questionanswer(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
