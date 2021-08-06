import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function() selectAnswer;

  Answer(this.selectAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.purple),
        child: Text('Answer 1'),
        onPressed: selectAnswer,
      ),
    );
  }
}