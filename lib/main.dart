import 'package:flutter/material.dart';
import 'package:teste/pages/characters/character_page.dart';
import 'package:teste/pages/home/home_page.dart';

void main() {
  runApp(
    MaterialApp(
        title: 'Rick and Morty App',
        theme: ThemeData(
          fontFamily: 'GetSchwifty',
          primaryColor: Colors.grey[900],
          scaffoldBackgroundColor: Colors.grey[850],
        ),
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomePage(),
          '/character': (context) => CharacterPage(),
        }),
  );
}
