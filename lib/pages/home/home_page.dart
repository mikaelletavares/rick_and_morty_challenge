import 'package:flutter/material.dart';
import 'package:teste/pages/characters/character_page.dart';
import 'package:teste/utils/conts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColorAppBar,
        title: Text(
          'Rick and Morty',
          style: kAppBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return CharacterPage();
                  }),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child:
                          Image.asset('images/rick_and_morty_characters.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Characters',
                        style: kPageHomeTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
