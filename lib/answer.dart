import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  // final String score;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.fromLTRB(0, 2, 0, 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            textStyle: const TextStyle(
              color: Colors.white,
            )),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
