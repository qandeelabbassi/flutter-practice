import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chat/pages/chat_main.dart';
import 'package:flutter_tutorial/chat/pages/welcome_screen.dart';

class MenuPage extends StatelessWidget {
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
                        Navigator.pushNamed(context, 'profile');
                      }),
                  RaisedButton(
                      child: Text('Dice Game'),
                      onPressed: () {
                        Navigator.pushNamed(context, 'dice');
                      }),
                  RaisedButton(
                      child: Text('Xylophone'),
                      onPressed: () {
                        Navigator.pushNamed(context, 'xylophone');
                      }),
                  RaisedButton(
                      child: Text('Quiz'),
                      onPressed: () {
                        Navigator.pushNamed(context, 'quiz');
                      }),
                  RaisedButton(
                      child: Text('Destini'),
                      onPressed: () {
                        Navigator.pushNamed(context, 'destini');
                      }),
                  RaisedButton(
                      child: Text('BMI Calculator'),
                      onPressed: () {
                        Navigator.pushNamed(context, 'bmi_calculator');
                      }),
                  RaisedButton(
                      child: Text('Clima'),
                      onPressed: () {
                        Navigator.pushNamed(context, 'clima_loading_screen');
                      }),
                  RaisedButton(
                      child: Text('Bitcoin Ticker'),
                      onPressed: () {
                        Navigator.pushNamed(context, 'ticker_price_screen');
                      }),
                  RaisedButton(
                      child: Text('Flash Chat'),
                      onPressed: () {
                        Navigator.pushNamed(context, ChatMain.id);
                      }),
                ],
              )),
        ));
  }
}
