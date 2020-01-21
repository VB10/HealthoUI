import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/widget/text/subtitle.dart';

class ListViewHeader extends StatelessWidget {
  final String leftText;
  final String righText;
  final Color rightColor;
  final Color leftColor;

  const ListViewHeader(
      {Key key,
      @required this.leftText,
      @required this.righText,
      this.rightColor,
      this.leftColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(leftText),
        SubTitleText(righText, color: rightColor),
      ],
    );
  }
}
