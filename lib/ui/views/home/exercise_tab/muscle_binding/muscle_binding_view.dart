import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/widget/listview/padding_listview.dart';
import 'package:healthoui/ui/shared/widget/padding/base_padding_enum.dart';

import './muscle_binding_view_model.dart';
import '../../../../shared/theme.dart';
import '../../../../shared/ui_helper.dart';
import '../../../../shared/widget/text/colum_text.dart';
import '../../../../shared/widget/text/subtitle.dart';

class MuscleBindingView extends MuscleBindingViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: UIHelper.appBar("Muscle Building"),
      body: PaddingListView(
        spaceLevel: BasePaddingLevel.VERY_LOW,
        widgets: <Widget>[
          photoCard,
          introCard,
          progressCard,
          progressText,
          ...subCards
        ],
      ),
    );
  }

  List<Widget> get subCards {
    List<Widget> _cards = [];
    for (var i = 0; i < 10; i++) {
      _cards.add(
        Card(
          color: greyCardColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SpaceValue.LOW)),
          child: cardItem("${i < 10 ? 0 : ""}$i"),
        ),
      );
    }
    return _cards;
  }

  Widget cardItem(String text) {
    return ListTile(
      leading: AspectRatio(
        aspectRatio: 90 / 100,
        child: Container(
          alignment: Alignment.topRight,
          child: SubTitleText(
            text,
            color: Colors.grey,
            size: FontSizeValue.HIGH,
          ),
        ),
      ),
      dense: true,
      title: Text("Week"),
      subtitle: SubTitleText("This is a beginner quick start....."),
      trailing: Icon(
        Icons.chevron_right,
      ),
    );
  }

  Widget get progressText => Align(
        alignment: Alignment.centerRight,
        child: SubTitleText("${(progressValue * 100).toInt()}% Complete"),
      );
  Widget get progressCard => Card(
        child: LinearProgressIndicator(
          value: progressValue,
          backgroundColor: greyCardColor,
          valueColor: AlwaysStoppedAnimation(Colors.green),
        ),
      );

  Widget get photoCard => AspectRatio(
        aspectRatio: 7 / 4,
        child: Stack(
          children: <Widget>[photo, aspectAlignPhotoCardInner],
        ),
      );

  Widget get introCard => ListTile(
        onTap: onPressed,
        trailing: Icon(Icons.chevron_right),
        title: Wrap(
          children: <Widget>[Text("Introduction"), SubTitleText(text)],
        ),
      );

  Widget get photo => Placeholder();

  Widget get aspectAlignPhotoCardInner => Align(
        alignment: Alignment.bottomCenter,
        child: AspectRatio(
          aspectRatio: 10 / 1.5,
          child: photoInnerContainer,
        ),
      );

  Widget get photoInnerContainer => Container(
        child: photoInnerChild,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: yellowSearchCardColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
      );
  Widget get photoInnerChild => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ColumnText(
            values: ["Goal", "Muscle Building"],
          ),
          ColumnText(
            values: ["Duration", "5 Weeks"],
          ),
          ColumnText(
            values: ["Level", "Beginner"],
          ),
        ],
      );
}
// before widget

// AspectRatio(
//             aspectRatio: 7 / 3,
//             child: Stack(
//               children: <Widget>[
//                 Placeholder(),
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   child: AspectRatio(
//                     aspectRatio: 10 / 1.5,
//                     child: Container(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: <Widget>[
//                           Wrap(
//                             direction: Axis.vertical,
//                             children: <Widget>[
//                               Text("Goal"),
//                               Text("Muscle Building"),
//                             ],
//                           ),
//                           Wrap(
//                             direction: Axis.vertical,
//                             children: <Widget>[
//                               Text("a"),
//                               Text("b"),
//                             ],
//                           ),
//                           Wrap(
//                             direction: Axis.vertical,
//                             children: <Widget>[
//                               Text("a"),
//                               Text("b"),
//                             ],
//                           )
//                         ],
//                       ),
//                       margin: EdgeInsets.symmetric(horizontal: 20),
//                       decoration: BoxDecoration(
//                         color: yellowSearchCardColor,
//                         borderRadius:
//                             BorderRadius.vertical(top: Radius.circular(30)),
//                       ),
//                     ),
//                   ),

// before atomic
// ListTile(
//             trailing: Icon(Icons.chevron_right),
//             title: Wrap(
//               children: <Widget>[
//                 Text("Introduction"),
//                 SubTitleText("data" * 10)
//               ],
//             ),
//           )
