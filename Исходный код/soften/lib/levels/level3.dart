import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:soften/homePage.dart';

class Level3 extends StatefulWidget {
  const Level3({super.key});

  @override
  State<Level3> createState() => _Level1State();
}

class _Level1State extends State<Level3> {
  int completedLevels = 0;
  int currentTestIndex = 0;
  List<Widget> radioListTiles = [];

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> test = tests[currentTestIndex];
    String question = test['question'];
    List<String> answers = test['answers'];
    String correctAnswer = test['correctAnswer'];

    // Create a list of RadioListTile widgets
    radioListTiles = answers.map((answer) {
      return RadioListTile(
        title: Text(answer),
        value: answer,
        groupValue: null, // Initialize groupValue to null
        onChanged: (value) {
          if (value == correctAnswer) {
            // Update the completedLevels and rebuild the widget
            setState(() {
              completedLevels++;
              currentTestIndex++;
            });
            if (currentTestIndex == tests.length - 1) {
              // Navigate back to the HomePage

              Navigator.pop(context);
            }
          }
        },
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Уровень 3'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(question),
          ...radioListTiles,
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> tests = [
  {
    'question': 'Кошка',
    'answers': ['Dog', 'Cat', 'Rabbit'],
    'correctAnswer': 'Cat',
  },
  {
    'question': 'Тигр',
    'answers': ['Tiger', 'Lion', 'Elephant'],
    'correctAnswer': 'Tiger',
  },
  {
    'question': 'Волк',
    'answers': ['Fox', 'Bear', 'Wolf'],
    'correctAnswer': 'Wolf',
  },
  {
    'question': 'Слон',
    'answers': ['Hippo', 'Giraffe', 'Elephant'],
    'correctAnswer': 'Elephant',
  },
  {
    'question': 'Лиса',
    'answers': ['Fox', 'Bear', 'Wolf'],
    'correctAnswer': 'Fox',
  },
  {
    'question': 'Зебра',
    'answers': ['Hippo', 'Zebra', 'Giraffe'],
    'correctAnswer': 'Zebra',
  },
  {
    'question': 'Медведь',
    'answers': ['Tiger', 'Bear', 'Lion'],
    'correctAnswer': 'Bear',
  },
  {
    'question': 'Кролик',
    'answers': ['Rabbit', 'Cat', 'Dog'],
    'correctAnswer': 'Rabbit',
  },
  {
    'question': 'Обезьяна',
    'answers': ['Lion', 'Elephant', 'Monkey'],
    'correctAnswer': 'Monkey',
  },
  {
    'question': 'Олень',
    'answers': ['Deer', 'Fox', 'Bear'],
    'correctAnswer': 'Monkey',
  },
];
