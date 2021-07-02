import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function onPressedCb;

  Answer(this.answerText, this.onPressedCb);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: onPressedCb),
    );
  }
}

class ElevatedAnswer extends StatelessWidget {
  final String answerText;
  final Function onPressedCb;

  ElevatedAnswer(this.answerText, this.onPressedCb);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          child: Text(answerText),
          onPressed: onPressedCb),
    );
  }
}
