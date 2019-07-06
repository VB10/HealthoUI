import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:healthoui/ui/shared/text_style.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/onboard_widget.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({Key key}) : super(key: key);

  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController _pageController;
  double _currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView(
                onPageChanged: (page) {
                  _onPageChangeEvent(page.toDouble());
                },
                controller: _pageController,
                children: <Widget>[
                  OnBoardWidget(
                    title: "Exercises",
                    subTitle: "To Your Personalized Profile",
                    imagePath: "onboard1",
                  ),
                  OnBoardWidget(
                    title: "Keep Eye On Health Tracking",
                    subTitle: "Log & reminder your activities",
                    imagePath: "onboard2",
                  ),
                  OnBoardWidget(
                    title: "Check Your Progress",
                    subTitle: "An tracking calendar",
                    imagePath: "onboard3",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: UIHelper.dynamicWidth(300),
              child: ListView.builder(
                itemCount: UIHelper.ONBOARD_PAGE_COUNT,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: index == _currentPageIndex
                          ? Colors.yellow
                          : Colors.grey,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: UIHelper.dynamicHeight(UIHelper.Space200),
              child: RaisedButton(
                child: Text(
                  "NEXT",
                  style: onBoardingNextButtonStyle,
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(UIHelper.Space25),
                    borderSide: BorderSide(color: Colors.white10)),
                color: Colors.yellow,
                onPressed: () {
                  _onPageChangeEvent(_currentPageIndex);
                  _pageController.nextPage(
                      duration: Duration(
                          milliseconds: UIHelper.ONBOARD_NEXT_DURATION),
                      curve: Curves.easeIn);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget get _appBar => AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: UIHelper.Space0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          ActionChip(
            label: Text(
              "skip",
              style: TextStyle(letterSpacing: 2),
            ),
            elevation: UIHelper.Space10,
            onPressed: () {},
          ),
          SizedBox(
            width: UIHelper.Space15,
          ),
        ],
      );

  void _onPageChangeEvent(double number) {
    if (number == UIHelper.ONBOARD_PAGE_COUNT) {
      //end page
      return;
    } else {
      setState(() {
        _currentPageIndex = number;
      });
    }
  }
}
