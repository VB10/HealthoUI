import 'package:flutter/material.dart';

import 'subtitle.dart';

class BoldSoftColumntText extends StatelessWidget {
  final String title;
  final String description;

  const BoldSoftColumntText({Key key, this.title, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 10,
      children: [
        SubTitleText(
          title,
          color: Colors.grey,
        ),
        Text(description)
      ],
    );
  }
}
