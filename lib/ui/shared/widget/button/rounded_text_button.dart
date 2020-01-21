import 'package:flutter/material.dart';

class RoundedTextButton extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  final String title;

  const RoundedTextButton(
      {Key key, this.color, @required this.onPressed, @required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
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
}
