import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 15},
        {'text': 'Green', 'score': 40},
        {'text': 'White', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Cow', 'score': 15},
        {'text': 'Lion', 'score': 40},
        {'text': 'Dog', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite place ?',
      'answers': [
        {'text': 'Singapore', 'score': 10},
        {'text': 'Dubai', 'score': 15},
        {'text': 'Los Angeles', 'score': 40},
        {'text': 'Mumbai', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite food ?',
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Pasta', 'score': 15},
        {'text': 'Maggi', 'score': 40},
        {'text': 'Burger', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite place in India ?',
      'answers': [
        {'text': 'Jaipur', 'score': 10},
        {'text': 'Delhi', 'score': 15},
        {'text': 'Mumbai', 'score': 40},
        {'text': 'Leh Ladakh', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite computer programming language ?',
      'answers': [
        {'text': 'C#', 'score': 10},
        {'text': 'Python', 'score': 15},
        {'text': 'Java', 'score': 40},
        {'text': 'Dart', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite temple ?',
      'answers': [
        {'text': 'Siddhi Vinayak Temple', 'score': 10},
        {'text': 'Padmanabhan Temple', 'score': 15},
        {'text': 'Tirupati Balaji', 'score': 40},
        {'text': 'VaishnoDevi', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite pilligram ?',
      'answers': [
        {'text': 'Kedarnath', 'score': 10},
        {'text': 'Badrinath', 'score': 15},
        {'text': 'Gangotri', 'score': 40},
        {'text': 'Yamunotri', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite season ?',
      'answers': [
        {'text': 'Autumn', 'score': 10},
        {'text': 'Summer', 'score': 15},
        {'text': 'Monsoon', 'score': 40},
        {'text': 'Winter', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite Tv show ?',
      'answers': [
        {'text': 'Hero', 'score': 10},
        {'text': 'TMKOC', 'score': 15},
        {'text': 'Wagle Ki Duniya', 'score': 40},
        {'text': 'Maddam Sir', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite hero ?',
      'answers': [
        {'text': 'Siddharth Nigam', 'score': 10},
        {'text': 'Tiger Shroff', 'score': 15},
        {'text': 'Abhishek Nigam', 'score': 40},
        {'text': 'Hrithik Roshan', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite outdoor game ?',
      'answers': [
        {'text': 'BasketBall', 'score': 10},
        {'text': 'VolleyBall', 'score': 15},
        {'text': 'Cricket', 'score': 40},
        {'text': 'Football', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite indoor game ?',
      'answers': [
        {'text': 'MonoPoly', 'score': 10},
        {'text': 'Ludo', 'score': 15},
        {'text': 'Buisness', 'score': 40},
        {'text': 'Chess', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite Sports Man ?',
      'answers': [
        {'text': 'CR7', 'score': 10},
        {'text': 'Messi', 'score': 15},
        {'text': 'Neymar Jr.', 'score': 40},
        {'text': 'Virat Kohli', 'score': 30}
      ]
    },
    // 'What\'s your favorite color ?',
    // 'What\'s your favorite animal ?'
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('no More Questions left');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQusetion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(
                  _totalScore,
                  _resetQuiz,
                )),
    );
  }
}
