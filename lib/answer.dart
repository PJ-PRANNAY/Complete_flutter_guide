import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 15.0, right: 15.0, top: 5.0, bottom: 3.0),
        child: ElevatedButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.pink.shade900),
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: selectHandler,
          child: Text(
            answerText,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.pink),
          ),
        ),
      ),
    );
  }
}
