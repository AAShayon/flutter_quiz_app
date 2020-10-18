import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  final String qtext;
  Question(this.qtext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(qtext,textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20.0,color: Colors.green),
      ),
    );
  }
}
