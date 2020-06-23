import 'package:flutter/material.dart';
import 'package:flutter_tutorial/bitcoin-ticker/pages/price_screen.dart';
import 'package:flutter_tutorial/bmi/pages/bmi_calculator_page.dart';
import 'package:flutter_tutorial/bmi/pages/bmi_result_page.dart';
import 'package:flutter_tutorial/chat/pages/chat_main.dart';
import 'package:flutter_tutorial/clima/pages/city_screen.dart';
import 'package:flutter_tutorial/clima/pages/loading_screen.dart';
import 'package:flutter_tutorial/clima/pages/location_screen.dart';
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
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => MenuPage(),
        'profile': (context) => ProfilePage(),
        'dice': (context) => DiceGamePage(),
        'xylophone': (context) => XylophonePage(),
        'quiz': (context) => QuizPage(),
        'destini': (context) => DestiniPage(),
        'ticker_price_screen': (context) => PriceScreen(),
        // BMI screens
        'bmi_calculator': (context) => BmiCalculatorPage(),
        'bmi_result': (context) => BmiResultPage(),
        // Weather screens
        'clima_city_screen': (context) => CityScreen(),
        'clima_loading_screen': (context) => LoadingScreen(),
        'clima_location_screen': (context) => LocationScreen(),
        // Chat screens
        ChatMain.id: (context) => ChatMain(),
      },
    );
  }
}
