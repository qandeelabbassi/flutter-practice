import 'package:flutter/material.dart';
import 'package:flutter_tutorial/destini/destini_page.dart';
import 'package:flutter_tutorial/quiz/quiz_page.dart';
import 'package:flutter_tutorial/xylophone/xylophone_page.dart';
import 'dice/dice_game_page.dart';
import 'profile/profile_page.dart';

void main() {
  runApp(MaterialApp(
    home: Menu(),
  ));
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
              width: double.infinity,
              color: Colors.white,
              margin: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      child: Text('Profile UI'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()),
                        );
                      }),
                  RaisedButton(
                      child: Text('Dice Game'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DiceGamePage()),
                        );
                      }),
                  RaisedButton(
                      child: Text('Xylophone'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => XylophonePage()),
                        );
                      }),
                  RaisedButton(
                      child: Text('Quiz'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizPage()),
                        );
                      }),
                  RaisedButton(
                      child: Text('Destini'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DestiniPage()),
                        );
                      }),
                ],
              )),
        ));
  }
}
