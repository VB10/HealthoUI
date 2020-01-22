import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/widget/text/subtitle.dart';

class ListViewHeader extends StatelessWidget {
  final String leftText;
  final String righText;
  final Color rightColor;
  final Color leftColor;
  final VoidCallback onPressed;

  const ListViewHeader(
      {Key key,
      @required this.leftText,
      @required this.righText,
      this.rightColor,
      this.leftColor,
      this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(leftText),
          SubTitleText(righText, color: rightColor),
        ],
      ),
    );
  }
}
