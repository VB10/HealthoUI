import 'dart:io';

import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/theme.dart';
import 'package:healthoui/ui/shared/widget/button/rounded_text_button.dart';
import 'package:healthoui/ui/shared/widget/header/listview_header.dart';
import 'package:healthoui/ui/shared/widget/padding/base_padding_enum.dart';
import 'package:healthoui/ui/shared/widget/space/empty_space.dart';
import 'package:healthoui/ui/shared/widget/text/subtitle.dart';

import '../../../shared/ui_helper.dart';
import './workout_plan_view_model.dart';
import '../../../shared/ui_helper.dart';
import '../../../shared/widget/card/icon_label_card.dart';

class WorkoutPlanView extends WorkoutPlanViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: _appBar,
      body: ListView(padding: EdgeInsets.all(10), children: <Widget>[
        IconLabelCard(
          title: "Find a Workout Plan",
          decription: "Perfect Workout plan that fulfill your fitness goal",
          icon: Icons.search,
          onPressed: () {},
        ),
        EmptySpace(level: BasePaddingLevel.LOW),
        RoundedTextButton(
          color: yellowSearchCard,
          title: "My Plan",
          onPressed: () {},
        ),
        EmptySpace(level: BasePaddingLevel.LOW),
        IconLabelCard(
          title: "Creat New Plan",
          decription: "Customise workout plans as per your",
          icon: Icons.add,
          onPressed: () {},
        ),
        EmptySpace(level: BasePaddingLevel.LOW),
        ListViewHeader(
          righText: "More",
          leftText: "Muscle Building",
          rightColor: yellowSearchCard,
        ),
        EmptySpace(level: BasePaddingLevel.LOW),
        AspectRatio(
          aspectRatio: 5 / 2,
          child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: SpaceValue.MEDIUM),
                child: Card(
                  child: AspectRatio(
                    aspectRatio: 3 / 2,
                    child: Placeholder(),
                  ),
                ),
              );
            },
          ),
        ),
        EmptySpace(level: BasePaddingLevel.LOW),
        ListViewHeader(
          righText: "More",
          leftText: "Gain Strength",
          rightColor: yellowSearchCard,
        ),
        EmptySpace(level: BasePaddingLevel.LOW),
        AspectRatio(
          aspectRatio: 5 / 2,
          child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: SpaceValue.MEDIUM),
                child: Card(
                  child: AspectRatio(
                    aspectRatio: 3 / 2,
                    child: Placeholder(),
                  ),
                ),
              );
            },
          ),
        )
      ]),
      // body:,
    );
  }

  AppBar get _appBar {
    return AppBar(
      /// [StatusBar] color light
      brightness: Platform.isAndroid ? Brightness.light : Brightness.dark,
      backgroundColor: UIHelper.SETTINGS_APP_BAR_COLOR,
      elevation: 0,
      leading: Image.asset(UIHelper.MENU_ICON),
      title: Text("Healtho"),
      centerTitle: false,
      actions: <Widget>[IconButton(icon: Icon(Icons.search), onPressed: () {})],
    );
  }
}

// Before Atamoc
// Card(
//         color: Color.fromRGBO(240, 240, 243, 1),
//         child: ListTile(
//           title: Text("Find Workout Plan"),
//           subtitle: SubTitleText(
//               "Perfect Workout plan that fulfill your fitness goal"),
//           leading: Card(
//             color: Colors.white,
//             shape: CircleBorder(
//                 side: BorderSide(color: Color.fromRGBO(241, 196, 14, 1))),
//             child: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Icon(
//                 Icons.search,
//                 color: Color.fromRGBO(241, 196, 14, 1),
//               ),
//             ),
//           ),
//         ),
//       )

// rasied button before

//  RaisedButton(
//           color: yellowSearchCard,
//           shape: StadiumBorder(),
//           child: Text("My Plan"),
//           onPressed: () {},
//         )

// atomic before
// Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Text("Muscle Building"),
//           SubTitleText("More", color: yellowSearchCard),
//         ],
//       ),
