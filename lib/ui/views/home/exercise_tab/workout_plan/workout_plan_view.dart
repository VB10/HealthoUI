import 'dart:io';

import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/theme.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/button/rounded_text_button.dart';
import 'package:healthoui/ui/shared/widget/card/icon_label_card.dart';
import 'package:healthoui/ui/shared/widget/header/listview_header.dart';
import 'package:healthoui/ui/shared/widget/listview/padding_listview.dart';
import 'package:healthoui/ui/shared/widget/padding/base_padding_enum.dart';
import 'package:healthoui/ui/shared/widget/space/empty_space.dart';
import 'package:healthoui/ui/views/home/exercise_tab/find_workout_plan/find_workout_plan.dart';

import './workout_plan_view_model.dart';

class WorkoutPlanView extends WorkoutPlanViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return _listView;
  }

  Widget get _listView {
    return PaddingListView(
      spaceLevel: BasePaddingLevel.LOW,
      widgets: <Widget>[
        findWorkoutCard,
        myPlanCard,
        createNewCard,
        listViewHeader,
        aspectHorizontalList,
        listViewSecondHeader,
        aspectHorizontalListSecond
      ],
    );
  }

  Widget get findWorkoutCard => IconLabelCard(
        title: "Find a Workout Plan",
        decription: "Perfect Workout plan that fulfill your fitness goal",
        icon: Icons.search,
        onPressed: onNavigate,
      );

  Widget get myPlanCard => RoundedTextButton(
        color: yellowSearchCardColor,
        title: "My Plan",
        onPressed: onNavigate,
      );

  Widget get createNewCard => IconLabelCard(
        title: "Creat New Plan",
        decription: "Customise workout plans as per your",
        icon: Icons.add,
        onPressed: () {},
      );

  Widget get listViewHeader => ListViewHeader(
        onPressed: onNavigateMuscle,
        righText: "More",
        leftText: "Muscle Building",
        rightColor: yellowSearchCardColor,
      );

  Widget get aspectHorizontalList => AspectRatio(
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
      );

  Widget get listViewSecondHeader => ListViewHeader(
        righText: "More",
        leftText: "Gain Strength",
        rightColor: yellowSearchCardColor,
      );

  Widget get aspectHorizontalListSecond => AspectRatio(
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
      );
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
//           color: yellowSearchCardColor,
//           shape: StadiumBorder(),
//           child: Text("My Plan"),
//           onPressed: () {},
//         )

// atomic before
// Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Text("Muscle Building"),
//           SubTitleText("More", color: yellowSearchCardColor),
//         ],
//       ),

// Base Padding List View
//  ListView get listView {
//     return ListView(padding: EdgeInsets.all(10), children: <Widget>[
//       findWorkoutCard,
//       EmptySpace(level: BasePaddingLevel.LOW),
//       myPlanCard,
//       EmptySpace(level: BasePaddingLevel.LOW),
//       createNewCard,
//       EmptySpace(level: BasePaddingLevel.LOW),
//       listViewHeader,
//       EmptySpace(level: BasePaddingLevel.LOW),
//       aspectHorizontalList,
//       EmptySpace(level: BasePaddingLevel.LOW),
//       listViewSecondHeader,
//       EmptySpace(level: BasePaddingLevel.LOW),
//       aspectHorizontalListSecond
//     ]);
//   }
