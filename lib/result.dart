import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'End of Questions';
    if (resultScore <= 50) {
      resultText = 'Poor';
    } else if (resultScore <= 60) {
      resultText = 'Average';
    } else if (resultScore <= 70) {
      resultText = 'Good';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: <
        Widget>[
      Center(
          child: Text(resultPhrase,
              style:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
      ElevatedButton(onPressed: resetHandler, child: const Text('Reset Quiz'))
    ]);
  }
}
