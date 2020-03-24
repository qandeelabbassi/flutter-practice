import 'package:flutter/material.dart';
import 'package:flutter_tutorial/styles.dart';

class RoundedContainer extends StatelessWidget {
  final double left, right, top, bottom;
  final double padding;
  final double minHeight;
  final Widget child;

  RoundedContainer(
      {this.left = 15.0,
      this.top = 15.0,
      this.right = 15.0,
      this.bottom = 15.0,
      this.padding = 0.0,
      this.child,
      this.minHeight = 0});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: minHeight),
        child: Container(
          margin: EdgeInsets.only(
              left: this.left,
              top: this.top,
              right: this.right,
              bottom: this.bottom),
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
              color: Styles.cardColor, borderRadius: BorderRadius.circular(10)),
          child: child,
        ),
      ),
    );
  }
}
