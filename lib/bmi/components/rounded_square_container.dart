import 'package:flutter/material.dart';
import 'package:flutter_tutorial/styles.dart';

class RoundedSquareContainer extends StatelessWidget {
  final double left, right, top, bottom;
  final Widget child;
  final bool active;
  final Function onTapCallback;

  RoundedSquareContainer(
      {this.left = 15.0,
      this.top = 15.0,
      this.right = 15.0,
      this.bottom = 15.0,
      this.child,
      this.active = false,
      this.onTapCallback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTapCallback,
        child: Padding(
          padding: EdgeInsets.only(
              left: this.left,
              top: this.top,
              right: this.right,
              bottom: this.bottom),
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              decoration: BoxDecoration(
                  color: Styles.activeCardColor,
                  borderRadius: BorderRadius.circular(10)),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
