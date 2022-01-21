import 'package:flutter/material.dart';
import 'package:teste/model/character_model.dart';

class StatusCircle extends StatelessWidget {
  final Status status;

  const StatusCircle({@required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: status == Status.ALIVE
            ? Colors.green
            : status == Status.DEAD
                ? Colors.red
                : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
