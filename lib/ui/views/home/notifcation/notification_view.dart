import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';

class NotifiactionView extends StatefulWidget {
  @override
  _NotifiactionViewState createState() => _NotifiactionViewState();
}

class _NotifiactionViewState extends State<NotifiactionView> {
  List<String> _notificationList = [
    "New Exercises and Plans Updated",
    "You Just Consulted  with our Nutritioni….",
    "Your Mobile Number is Updated",
    "Health Tips - why Breathing is important",
    "You Just Complete the Pushups Ch..."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: UIHelper.Space10),
          itemCount: _notificationList.length,
          itemBuilder: (context, index) {
            return _cardItem(index);
          },
        ));
  }

  Widget _cardItem(int index) => Card(
        color: UIHelper.SETTINGS_CARD_BACKGROUND_COLOR,
        margin: EdgeInsets.only(top: UIHelper.Space20),
        child: ListTile(
          title: Text(
            _notificationList[index],
            style: profileHeaderCardSubTitle,
          ),
        ),
      );
}
