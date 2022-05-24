import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String name;

  ButtonWidget({this.name});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      color: Colors.grey[300],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: () {},
      child: Text(
        name,
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ToggleButtons1 extends StatefulWidget {
  @override
  _ToggleButtons1State createState() => _ToggleButtons1State();
}

class _ToggleButtons1State extends State<ToggleButtons1> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) => ToggleButtons(
        borderRadius: BorderRadius.circular(10),
        isSelected: isSelected,
        selectedColor: Colors.orange,
        disabledColor: Colors.grey,
        color: Colors.black,
        fillColor: Colors.orange[100],
        renderBorder: false,
        highlightColor: Colors.orange,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Adult',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text('Children',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ],
        onPressed: (int newIndex) {
          setState(() {
            for (int index = 0; index < isSelected.length; index++) {
              if (index == newIndex) {
                isSelected[index] = true;
              } else {
                isSelected[index] = false;
              }
            }
          });
        },
      );
}
