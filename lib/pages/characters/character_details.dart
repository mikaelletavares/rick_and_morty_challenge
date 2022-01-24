import 'package:flutter/material.dart';
import 'package:teste/components/status_row.dart';
import 'package:teste/model/character_model.dart';
import 'package:teste/components/table_row.dart';
import 'package:teste/utils/conts.dart';

class CharacterDetails extends StatelessWidget {
  final Result characterData;

  @required
  CharacterDetails({@required this.characterData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColorAppBar,
        title: Text(
          'Character',
          style: kAppBarTextStyle,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(icon: Icon(Icons.star_border), onPressed: () {}),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ClipOval(
                  child: Image.network(
                    characterData.image,
                    width: 250,
                    height: 250,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  characterData.name,
                  style: kCharacterTitleTextStyle,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              StatusRow(
                status: characterData.status,
                species:
                    characterData.species.toString().replaceAll('Species.', ''),
              ),
              TableRowDetails(
                title: 'Gender:',
                value:
                    characterData.gender.toString().replaceAll('Gender.', ''),
              ),
              TableRowDetails(
                title: 'Origin:',
                value: characterData.origin.name,
              ),
              TableRowDetails(
                title: 'Last Location:',
                value: characterData.location.name,
              )
            ],
          ),
        ),
      ),
    );
  }
}
