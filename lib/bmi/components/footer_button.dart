import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/styles.dart';

class FooterButton extends StatelessWidget {
  final Function onTapCallback;
  final String buttonTitle;

  FooterButton({@required this.onTapCallback, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Styles.accentColor,
      width: double.infinity,
      height: Platform.isAndroid ? Styles.bottomButtonHeightAndroid : Styles.bottomButtonHeightIos,
      child: FlatButton(
        child: Text(buttonTitle, style: Styles.buttonTextStyle),
        onPressed: onTapCallback,
      ),
    );
  }
}
