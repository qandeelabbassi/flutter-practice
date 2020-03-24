import 'package:flutter/material.dart';
import 'package:flutter_tutorial/styles.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressedCallback;
  final double size;

  RoundedIconButton({@required this.iconData, @required this.onPressedCallback, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      elevation: 2.0,
      fillColor: Styles.roundedButtonColor,
      onPressed: onPressedCallback,
      child: Icon(iconData, size: size),
    );
  }
}
