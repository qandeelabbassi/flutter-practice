import 'package:flutter/material.dart';
import 'package:flutter_tutorial/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LabeledIcon extends StatelessWidget {
  final IconData iconData;
  final bool active;
  final String label;

  LabeledIcon({@required this.iconData, @required this.label, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          color: active ? Colors.white : Color(0xFF8D8E99),
          size: 80,
        ),
        SizedBox(height: 15.0),
        Text(label,
            style: Styles.cardLabelTextStyle
                .copyWith(color: active ? Colors.white : Styles.content.color))
      ],
    );
  }
}
