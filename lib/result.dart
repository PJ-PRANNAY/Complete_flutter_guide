import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You Did It';
    if (resultScore <= 30) {
      resultText = 'You are not a Good Player of the game';
    } else if (resultScore <= 80) {
      resultText = 'You Have A good Choice';
    } else if (resultScore <= 120) {
      resultText = 'Your choice is Now Better';
    } else if (resultScore <= 150) {
      resultText = 'Please Practice It Again';
    } else if (resultScore <= 200) {
      resultText = 'You are very Smart';
    } else if (resultScore <= 450) {
      resultText = 'You Are Doing Better';
    } else if (resultScore > 450) {
      resultText = 'You Did It';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            textColor: Colors.pink,
            child: Icon(
              Icons.refresh,
              color: Colors.pink,
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
