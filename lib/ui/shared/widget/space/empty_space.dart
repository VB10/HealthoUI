import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/widget/padding/base_padding_enum.dart';

class EmptySpace extends StatelessWidget {
  final BasePaddingLevel level;
  final bool isWidth;
  const EmptySpace({Key key, this.level, this.isWidth = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isWidth ? 0 : spaceValue(context),
      width: !isWidth ? 0 : spaceValue(context),
    );
  }

  double spaceValue(BuildContext context) {
    final value = MediaQuery.of(context).size.aspectRatio;
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
