import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/widget/padding/base_padding_enum.dart';

class RoundedTextButton extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  final String title;
  final BasePaddingLevel spaceLevel;

  const RoundedTextButton(
      {Key key,
      this.color,
      @required this.onPressed,
      @required this.title,
      this.spaceLevel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(_spaceValue),
      color: color,
      shape: StadiumBorder(),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .subhead
            .copyWith(fontWeight: FontWeight.w600),
      ),
      onPressed: onPressed,
    );
  }

  double get _spaceValue {
    switch (spaceLevel) {
      case BasePaddingLevel.VERY_LOW:
        return 15;
      case BasePaddingLevel.LOW:
        return 20;
      case BasePaddingLevel.MIDDLE:
        return 40;
      case BasePaddingLevel.HIGH:
        return 60;
      default:
        return 10;
    }
  }
}
