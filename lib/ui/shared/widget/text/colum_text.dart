import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/text/subtitle.dart';

class ColumnText extends StatelessWidget {
  final List<String> values;

  const ColumnText({Key key, this.values}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: values
          .map((item) => SubTitleText(
                item,
                size: FontSizeValue.LOW,
              ))
          .toList(),
    );
  }
}
