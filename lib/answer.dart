import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final Function buttonhandler;
  final String quT;
  Answer(this.buttonhandler,this.quT);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left:150.0,right: 150.0),
      child: RaisedButton(
        child: Text(quT,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15.5,color: Colors.lightGreen),
        ),
        onPressed: buttonhandler,
      ),
    );
  }
}
