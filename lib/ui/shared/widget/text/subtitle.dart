import 'package:flutter/material.dart';

import '../../ui_helper.dart';

class SubTitleText extends StatelessWidget {
  final String value;
  final Color color;

  const SubTitleText(this.value, {this.color});
  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: Theme.of(context).textTheme.subhead.copyWith(
          color: color,
          fontWeight: FontWeight.normal,
          fontSize: FontSizeValue.VERY_LOW),
    );
  }
}
