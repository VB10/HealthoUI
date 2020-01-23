import 'package:flutter/material.dart';

import './introduction_view_model.dart';
import '../../../../shared/ui_helper.dart';
import '../../../../shared/widget/padding/base_padding_enum.dart';
import '../../../../shared/widget/space/empty_space.dart';
import '../../../../shared/widget/text/subtitle.dart';

class IntroductionView extends IntroductionViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: UIHelper.appBar("Introduction"),
      body: Padding(
        padding: EdgeInsets.all(SpaceValue.LOW),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(completeText),
            space,
            Text("Dscription"),
            space,
            SubTitleText(
              description,
              size: FontSizeValue.LOW,
            ),
            space,
            ...items()
          ],
        ),
      ),
    );
  }

  Widget get space => EmptySpace(
        level: BasePaddingLevel.MIDDLE,
      );
}
