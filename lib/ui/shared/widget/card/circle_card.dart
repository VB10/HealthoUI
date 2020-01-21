import 'package:flutter/material.dart';

class CircleCard extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final Color backgroundColour;

  const CircleCard(
      {Key key,
      @required this.borderColor,
      this.backgroundColour,
      @required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColour ?? Colors.white,
      shape: CircleBorder(side: BorderSide(color: borderColor)),
      child: child,
    );
  }
}
