import 'package:flutter/material.dart';

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
                        Navigator.pushNamed(context, 'bmicalculator');
                      }),
                ],
              )),
        ));
  }
}
