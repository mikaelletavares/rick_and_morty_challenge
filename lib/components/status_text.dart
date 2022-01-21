import 'package:flutter/material.dart';
import 'package:teste/model/character_model.dart';
import 'package:teste/utils/conts.dart';

class StatusText extends StatelessWidget {
  final Status status;

  const StatusText({@required this.status});

  @override
  Widget build(BuildContext context) {
    return Text(
      status == Status.ALIVE
          ? 'ALIVE'
          : status == Status.DEAD
              ? 'DEAD'
              : '',
      style: kCharacterStatusTextStyle,
      textAlign: TextAlign.center,
    );
  }
}
