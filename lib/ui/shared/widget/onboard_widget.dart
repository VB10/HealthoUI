import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

import '../text_style.dart';

class OnBoardWidget extends StatelessWidget {
  const OnBoardWidget(
      {Key key,
      @required this.title,
      @required this.subTitle,
      @required this.imagePath})
      : super(key: key);

  final String title;
  final String subTitle;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(child: _header),
        Expanded(child: _placeImage),
        Spacer()
      ],
    );
  }

  Widget get _header => Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        spacing: UIHelper.Space10,
        children: <Widget>[_title, _subTitle],
      );

  Widget get _title => Text(
        this.title,
        style: onBoardingTitleTextStyle,
      );

  Widget get _subTitle => Text(
        this.subTitle,
        style: onBoardingSubTitleTextStyle,
      );

  Widget get _placeImage => Image.asset("assets/images/$imagePath.png");
}
