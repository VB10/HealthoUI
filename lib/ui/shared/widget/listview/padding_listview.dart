import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/padding/base_padding_enum.dart';

class PaddingListView extends StatelessWidget {
  final BasePaddingLevel spaceLevel;
  final List<Widget> widgets;

  const PaddingListView(
      {Key key, @required this.spaceLevel, @required this.widgets})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(SpaceValue.LOW),
      itemCount: widgets.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: _spaceValue),
          child: widgets[index],
        );
      },
    );
  }

  double get _spaceValue {
    switch (spaceLevel) {
      case BasePaddingLevel.VERY_LOW:
        return 10;
      case BasePaddingLevel.LOW:
        return 15;
      case BasePaddingLevel.MIDDLE:
        return 25;
      case BasePaddingLevel.HIGH:
        return 50;
      default:
        return 20;
    }
  }
}
