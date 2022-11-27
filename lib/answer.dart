import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 84, 148, 239)),
            foregroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255))),
        child: Text(answerText ?? 'Begum Hazrat Mahal'),
        onPressed: selectHandler,
      ),
    );
  }
}
