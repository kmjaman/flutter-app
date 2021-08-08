import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  final List questions = [
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

    if (_questionIndex < questions.length){
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
          body: _questionIndex < questions.length ? Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'],
              ),
              ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )
          : Center(child: Text('Completed!'),
        ),
      ),
    );
  }
}