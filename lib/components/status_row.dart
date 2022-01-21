import 'package:flutter/material.dart';
import 'package:teste/components/species_text.dart';
import 'package:teste/components/status_circle.dart';
import 'package:teste/components/status_text.dart';
import 'package:teste/model/character_model.dart';
import 'package:teste/utils/conts.dart';

class StatusRow extends StatelessWidget {
  final Status status;
  final String species;

  const StatusRow({@required this.status, @required this.species});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
        width: 180.0,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(100.0),
          ),
          color: kTableRowColor,
        ),
        margin: EdgeInsets.only(top: 0, bottom: 20),
        child: Row(
          children: <Widget>[
            StatusText(status: status),
            SizedBox(width: 3),
            StatusCircle(status: status),
            SizedBox(width: 5),
            Text('|', style: kCharacterStatusTextStyle),
            SizedBox(width: 3),
            SpeciesText(species: species),
          ],
        ),
      ),
    );
  }
}
