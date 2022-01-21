import 'package:flutter/material.dart';
import 'package:teste/model/character_model.dart';
import 'package:teste/utils/conts.dart';

class SpeciesText extends StatelessWidget {
  final String species;

  const SpeciesText({@required this.species});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        species == 'HUMAN'
            ? 'HUMAN'
            : species == 'ALIEN'
                ? 'ALIEN'
                : 'UNKNOWN',
        style: kCharacterStatusTextStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
