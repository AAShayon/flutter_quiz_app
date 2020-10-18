import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function rsth;
  Result(this.score,this.rsth);
  String get resultperse {
    var resulttext = 'you did it';
    if(score<=20){
      resulttext='good';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
            child: Text(resultperse,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36.5),),
          ),
          Text('Your Score is = $score',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36.5, color: Colors.red),
          ),
          FlatButton(
            child: Text('Reset Quiz',textAlign: TextAlign.center,style: TextStyle(fontSize: 15.5,color: Colors.deepPurpleAccent),),
            onPressed: rsth,
          ),
        ],
      ),


    );
  }
}
