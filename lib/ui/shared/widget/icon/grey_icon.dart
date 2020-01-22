import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/theme.dart';

class GreyIcon extends StatelessWidget {
  final IconData icon;
  final double size;

  const GreyIcon({Key key, this.icon, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: greyCardColor,
      size: size,
    );
  }
}
