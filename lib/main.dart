import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }


}

class _MyAppState extends State<MyApp> {

  final List<Map<String, Object>> _questions = [
      {
        'questionText': 'What\s your favourite color?', 'answers': [{'text': 'Black', 'score': 10}, {'text': 'Red', 'score': 5}, {'text': 'Green', 'score': 3}],
      },
      {
        'questionText': 'What\s your favourite animal?', 'answers': [{'text': 'Rabbit', 'score': 1}, {'text': 'Snake', 'score': 10}, {'text': 'Elephant', 'score': 5}],
      }
    ];
  
  var _questionIndex = 0;
  var _totalScore =0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore =0;
    });
  }

  void _answerQuestion(int score){

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length){
      print('There are more questions!');
    } else{
      print('No more question available');
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
          ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,) 
          : Result(_totalScore, _resetQuiz),
        ),
      );
  }
}