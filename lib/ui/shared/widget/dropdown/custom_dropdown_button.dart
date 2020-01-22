import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  final List<String> values;
  final String selectedValue;

  const CustomDropDownButton({Key key, this.values, this.selectedValue})
      : super(key: key);

  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String _selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        isExpanded: true,
        onChanged: (val) {
          _selectedValue = val;
          setState(() {});
        },
        value: _selectedValue ?? widget.values.first,
        items: dropdownMenuItems,
      ),
    );
  }

  List<DropdownMenuItem<String>> get dropdownMenuItems => widget.values
      .map((item) => _item(item))
      .cast<DropdownMenuItem<String>>()
      .toList();

  DropdownMenuItem _item(String val) {
    return DropdownMenuItem<String>(
      value: val,
      child: Text(val),
    );
  }
}
