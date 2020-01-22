import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

class PaddingTextTab extends StatelessWidget {
  final String text;

  const PaddingTextTab(this.text, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Padding(
        padding: EdgeInsets.only(top: SpaceValue.VERY_LOW),
        child: Text(text),
      ),
      // text: "Exercises",
    );
  }
}
