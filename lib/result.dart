import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetHandler;

  Result(this.resultscore, this.resetHandler);

  String get resultphrase {
    String resultText;
    switch (resultscore) {
      case 10:
        {
          resultText = 'Your score is 10';
          break;
        }
      case 20:
        {
          resultText = 'Your score is 20';
          break;
        }
      case 30:
        {
          resultText = 'Your score is 30';
          break;
        }
      case 40:
        {
          resultText = 'Your score is 40';
          break;
        }
      case 50:
        {
          resultText = 'Your score is 50';
          break;
        }
      case 60:
        {
          resultText = 'Your score is 60';
          break;
        }
      case 70:
        {
          resultText = 'Your score is 70';
          break;
        }
      case 80:
        {
          resultText = 'Your score is 80';
          break;
        }
      case 90:
        {
          resultText = 'Your score is 90';
          break;
        }
      case 100:
        {
          resultText = 'Your score is 100';
          break;
        }
      case 0:
        {
          resultText = 'Your score is 0';
          break;
        }
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultphrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
