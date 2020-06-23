import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function onTapCallback;
  final String buttonTitle;
  final bgColor;

  RoundedButton(
      {@required this.buttonTitle, this.bgColor, @required this.onTapCallback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: bgColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            //Go to login screen.
            onTapCallback();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonTitle,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
