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
        'questionText': 'What\s your favourite color?', 'answer': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\s your favourite animal?', 'answer': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\s your favourite food?', 'answer': ['Rice', 'Pizza', 'Burger', 'Donut'],
      }
    ];
  
  var _questionIndex = 0;

  void _answerQuestion(){

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
          : Result(),
        ),
      );
  }
}