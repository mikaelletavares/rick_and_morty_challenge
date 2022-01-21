import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/utils/conts.dart';

class TableRowDetails extends StatelessWidget {
  TableRowDetails({@required this.title, @required this.value});

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
        color: kTableRowColor,
      ),
      margin: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(4),
              child: Text(
                addNewLineCharacter(value),
                style: kCharacterTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(6),
              child: Text(
                value,
                style: kCharacterDataTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String addNewLineCharacter(String result) {
    if (result.length <= 23 && result.allMatches(' ').length <= 2) {
      return title;
    } else {
      return title + '\n';
    }
  }
}
