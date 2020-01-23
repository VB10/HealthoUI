import 'package:flutter/material.dart';

import '../../theme.dart';
import '../../ui_helper.dart';
import '../padding/base_padding.dart';
import '../padding/base_padding_enum.dart';
import '../text/subtitle.dart';
import 'circle_card.dart';
import 'rounded_rectange_card.dart';

class IconLabelCard extends StatelessWidget {
  final String title;
  final String decription;
  final IconData icon;
  final VoidCallback onPressed;
  IconLabelCard({
    Key key,
    @required this.title,
    @required this.decription,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedRectangleCard(
      color: greyCardColor,
      child: InkWell(onTap: onPressed, child: _listTile),
    );
  }

  Widget get _listTile => ListTile(
        contentPadding: EdgeInsets.all(SpaceValue.VERY_LOW),
        title: Text(title),
        subtitle: SubTitleText(decription),
        leading: CircleCard(borderColor: yellowSearchCardColor, child: _icon),
      );

  Widget get _icon => BasePadding(
        level: BasePaddingLevel.LOW,
        child: Icon(icon, color: yellowSearchCardColor),
      );
}
