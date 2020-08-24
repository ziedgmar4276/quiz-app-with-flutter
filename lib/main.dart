import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answarQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'what is  you favorite color?',
        'answers': ['Black', 'blue', 'white', 'red']
      },
      {
        'questionText': 'what is  your favorite  animal  ?',
        'answers': ['chat', 'elephone', 'snake', 'lion']
      },
      {
        'questionText': 'what is  your favorite  introduction ?',
        'answers': ['zied', 'zied', 'snake', 'lion']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUESTION ANSWER'),
        ),
        body: Column(
            children: [
          Question(
            questions[_questionIndex]['questionText'],
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer){
           return Answer(_answarQuestions,answer);
         }).toList()
        ],
        ),
      ),
    );
  }
}
