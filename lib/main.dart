import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppstate();
  }
}

class _MyAppstate extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s the capital of India ?',
      'answers': [
        {'text': 'Chennai', 'score': 0},
        {'text': 'Delhi', 'score': 10},
        {'text': 'Mumbai', 'score': 0},
        {'text': 'Agra', 'score': 0},
      ],
    },
    {
      'questionText':
          'Who among the following was on the mission Apollo 11 to moon ?',
      'answers': [
        {'text': 'Edwin Alderin', 'score': 10},
        {'text': 'Rakesh sharma', 'score': 0},
        {'text': 'Yury Gagarin', 'score': 0},
        {'text': 'Alan Shepard', 'score': 0},
      ],
    },
    {
      'questionText': 'Who wrote national song of India ?',
      'answers': [
        {'text': 'Sardar Vallabhbhai Patel', 'score': 0},
        {'text': 'Jamshed ji Tata', 'score': 0},
        {'text': 'Rabindranath Tagore', 'score': 0},
        {'text': 'Bankim Chadra Chatterjee', 'score': 10},
      ],
    },
    {
      'questionText': 'Who wrote "Mrinalini" ?',
      'answers': [
        {'text': 'Vyasa', 'score': 0},
        {'text': 'Arundhati Roy', 'score': 0},
        {'text': 'Bankim Chadra Chatterjee', 'score': 10},
        {'text': 'Vikram seth', 'score': 0},
      ],
    },
    {
      'questionText':
          'Who said "The moral, in one word, is that you are divine" ?',
      'answers': [
        {'text': 'Swami vivekanand', 'score': 10},
        {'text': 'Debendranath tagore', 'score': 0},
        {'text': 'Shankaracharya', 'score': 0},
        {'text': 'Acharya Chanakya', 'score': 0},
      ],
    },
    {
      'questionText': 'Who among the following is not a Freedom fighter ?',
      'answers': [
        {'text': 'Lala Lajpat Rai', 'score': 0},
        {'twxt': 'Begum H Mahal', 'score': 0},
        {'text': 'Bhagat Singh', 'score': 0},
        {'text': 'None of the above', 'score': 10}
      ],
    },
    {
      'questionText': 'Which is the nearest Galaxy to Milky way ?',
      'answers': [
        {'text': 'Andromeda', 'score': 10},
        {'text': 'Sombrero', 'score': 0},
        {'text': 'Triangulum', 'score': 0},
        {'text': 'Circinus', 'score': 1},
      ],
    },
    {
      'questionText': 'Land of rising sun?',
      'answers': [
        {'text': 'Japan', 'score': 10},
        {'text': 'China', 'score': 0},
        {'text': 'Norway', 'score': 0},
        {'text': 'Israel', 'score': 0},
      ],
    },
    {
      'questionText': 'What was the name of the first dog to go in space?',
      'answers': [
        {'text': 'Liaka', 'score': 10},
        {'text': 'Dolly', 'score': 0},
        {'text': 'Bruno', 'score': 0},
        {'text': 'Maxx', 'score': 0},
      ],
    },
    {
      'questionText': 'Which is the color of peace ?',
      'answers': [
        {'text': 'Black', 'score': 0},
        {'text': 'Red', 'score': 0},
        {'text': 'Green', 'score': 0},
        {'text': 'White', 'score': 10},
      ],
    },
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
      print('We have more questions!');
    } else {
      print('NO more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gk quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
