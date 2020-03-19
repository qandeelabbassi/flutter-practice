import 'package:flutter/material.dart';
import 'package:flutter_practice/xylophone_page.dart';
import 'dice_game_page.dart';
import 'profile_page.dart';

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
                ],
              )),
        ));
  }
}
