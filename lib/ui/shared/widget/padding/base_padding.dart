import 'package:flutter/material.dart';

import 'base_padding_enum.dart';

class BasePadding extends StatelessWidget {
  final BasePaddingLevel level;
  final Widget child;
  const BasePadding({Key key, this.level, @required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingValue(context)),
      child: child,
    );
  }

  double paddingValue(BuildContext context) {
    final value = MediaQuery.of(context).size.aspectRatio;
    print(value);
    switch (level) {
      case BasePaddingLevel.HIGH:
        return value * 100;
      case BasePaddingLevel.MIDDLE:
        return value * 50;
      case BasePaddingLevel.LOW:
        return value * 20;
      case BasePaddingLevel.VERY_LOW:
        return value * 10;
      default:
        return value;
    }
  }
}
