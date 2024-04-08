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
    'question': 'Пальто',
    'answers': ['Shirt', 'Coat', 'Dress'],
    'correctAnswer': 'Coat',
  },
  {
    'question': 'Шарф',
    'answers': ['Scarf', 'Gloves', 'Hat'],
    'correctAnswer': 'Scarf',
  },
  {
    'question': 'Куртка',
    'answers': ['Blouse', 'Sweater', 'Jacket'],
    'correctAnswer': 'Jacket',
  },
  {
    'question': 'Ботинки',
    'answers': ['Boots', 'Sandals', 'Sneakers'],
    'correctAnswer': 'Boots',
  },
  {
    'question': 'Рубашка',
    'answers': ['Coat', 'Shirt', 'Dress'],
    'correctAnswer': 'Shirt',
  },
  {
    'question': 'Перчатки',
    'answers': ['Hat', 'Gloves', 'Scarf'],
    'correctAnswer': 'Gloves',
  },
  {
    'question': 'Штаны',
    'answers': ['Trousers', 'Jacket', 'Boots'],
    'correctAnswer': 'Trousers',
  },
  {
    'question': 'Платье',
    'answers': ['Blouse', 'Coat', 'Dress'],
    'correctAnswer': 'Dress',
  },
  {
    'question': 'Шапка',
    'answers': ['Hat', 'Scarf', 'Gloves'],
    'correctAnswer': 'Hat',
  },
  {
    'question': 'Выход',
    'answers': ['Exit', 'Run', 'Pause'],
    'correctAnswer': 'Exit',
  },
];
