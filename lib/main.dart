import 'package:flutter/material.dart';
import 'package:flutter_tutorial/bmi/pages/bmi_calculator_page.dart';
import 'package:flutter_tutorial/bmi/pages/bmi_result_page.dart';
import 'package:flutter_tutorial/destini/destini_page.dart';
import 'package:flutter_tutorial/dice/dice_game_page.dart';
import 'package:flutter_tutorial/menu.dart';
import 'package:flutter_tutorial/profile/profile_page.dart';
import 'package:flutter_tutorial/quiz/quiz_page.dart';
import 'package:flutter_tutorial/xylophone/xylophone_page.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MenuPage(),
        'profile': (context) => ProfilePage(),
        'dice': (context) => DiceGamePage(),
        'xylophone': (context) => XylophonePage(),
        'quiz': (context) => QuizPage(),
        'destini': (context) => DestiniPage(),
        'bmicalculator': (context) => BmiCalculatorPage(),
        'bmiresult': (context) => BmiResultPage(),
      },
    );
  }
}
