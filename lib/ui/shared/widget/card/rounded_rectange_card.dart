import 'package:flutter/material.dart';

import '../../theme.dart';

class RoundedRectangleCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final double marginValue;

  const RoundedRectangleCard(
      {Key key, this.color, @required this.child, this.marginValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? greyCardColor,
      margin: EdgeInsets.all(marginValue ?? 0),
      shape: RoundedRectangleBorder(borderRadius: _radius(context)),
      child: child,
    );
  }

  BorderRadius _radius(BuildContext context) {
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;
    return BorderRadius.circular(aspectRatio * 20);
  }
}
