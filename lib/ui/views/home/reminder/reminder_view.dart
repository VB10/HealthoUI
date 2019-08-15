import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/constants.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

class ReminderView extends StatefulWidget {
  @override
  _ReminderViewState createState() => _ReminderViewState();
}

class _ReminderViewState extends State<ReminderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: CircleBorder(
              side: BorderSide(color: Colors.yellow[600], width: 3)),
          child: Icon(
            Icons.add,
            color: Colors.yellow[600],
            size: UIHelper.Space30,
          ),
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: UIHelper.Space10),
          itemCount: Constants.REMINDER_COUNT,
          itemBuilder: (context, index) {
            /// Set  listview both [FloatingActionButton] space
            return index == Constants.REMINDER_COUNT - 1
                ? SizedBox(height: UIHelper.Space100)
                : _cardItem;
          },
        ));
  }

  Widget get _cardItem => Card(
        color: UIHelper.SETTINGS_CARD_BACKGROUND_COLOR,
        margin: EdgeInsets.only(top: UIHelper.Space20),
        child: Container(
          height: UIHelper.dynamicHeight(UIHelper.Space300),
          padding: EdgeInsets.all(UIHelper.Space10),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Workout Reminder", style: profileHeaderCardSubTitle),
                  Text("06 : 00 AM", style: profileHeaderCardSubTitle),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Repeat",
                          style: profileHeaderCardNormalYellowTitle),
                      TextSpan(text: " -- ", style: profileHeaderCardSubTitle),
                      TextSpan(
                          text: "Mon, Tue, fri",
                          style: profileHeaderCardNormalTitle)
                    ]),
                  ),
                ],
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    width: UIHelper.Space25 * 3,
                    child: Switch(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: false,
                      activeColor: Colors.yellow[600],
                      inactiveTrackColor: Colors.yellow[600],
                      activeTrackColor: Colors.yellow[600],
                      inactiveThumbColor: Colors.yellow[600],
                      onChanged: (val) {},
                    ),
                  ),
                  Icon(
                    Icons.delete_outline,
                    color: Colors.yellow[600],
                    size: UIHelper.Space30,
                  )
                ],
              ),
            ],
          ),
        ),
      );
}
