import 'package:flutter/material.dart';

class ExerciseView extends StatefulWidget {
  ExerciseView({Key key}) : super(key: key);

  _ExerciseViewState createState() => _ExerciseViewState();
}

class _ExerciseViewState extends State<ExerciseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      // crossAxisCount is the number of columns
      crossAxisCount: 2,
      // This creates two columns with two items in each column
      children: List.generate(5, (index) {
        return Card(
          color: Colors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.red,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 30,
                    color: Colors.green,
                  ),
                ),
              )
            ],
          ),
        );
      }),
    ));
  }
}
