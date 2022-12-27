import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(children: [
        Text(question[questionIndex]),
        ElevatedButton(
          onPressed: answerQuestion,
          child: Text('Answer 1'),
        ),
        ElevatedButton(
          onPressed: () => print('wow'),
          child: Text('Answer 2'),
        ),
        ElevatedButton(
          onPressed: answerQuestion,
          child: Text('Answer 3'),
        )
      ]),
    ));
  }
}
