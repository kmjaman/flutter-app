import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {
  var questions;
  var questionIndex;
  var answerQuestion;

  Quiz(
    {@required this.questions, 
    @required this.answerQuestion, 
    @required this.questionIndex});


  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Question(
                questions[questionIndex]['questionText'],
              ),
              ...(questions[questionIndex]['answers'] as List).map((answer) {
                return Answer(() => answerQuestion(answer['score']), answer['text']);
              }).toList()
            ],
          );
  }
}