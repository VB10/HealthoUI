import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

class ExerciseView extends StatefulWidget {
  ExerciseView({Key key}) : super(key: key);

  _ExerciseViewState createState() => _ExerciseViewState();
}

class _ExerciseViewState extends State<ExerciseView> {
  List<String> exercises = [];
  UnmodifiableListView<String> get items => UnmodifiableListView(exercises);

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 8; i++) {
      exercises.add("$i");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(items.length, (index) {
          return _card(index + 1);
        }),
      ),
    );
  }

  Widget _card(int index) {
    return Card(
      color: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: <Widget>[
          _images(index.toString()),
          _aligmentWidget(
              child: ListTile(
            title: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                Text("Biceps", style: profileHeaderCardTitle),
                Text("16 Exercises", style: profileHeaderCardNormalTitle),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _images(String index) {
    return Positioned.fill(
      child: Image.asset(
        "assets/images/exercises/$index.png",
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _aligmentWidget({Widget child}) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color: UIHelper.EXERCISES_CARD_BOTTOM,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15), topRight: Radius.circular(50)),
          ),
          child: child),
    );
  }
}
