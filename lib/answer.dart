import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function() selectAnswer;
  final String answerText;

  Answer(this.selectAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(primary: Colors.purple, onPrimary: Colors.yellow),
        child: Text(answerText),
        onPressed: selectAnswer,
      ),
    );
  }
}