import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:teste/pages/characters/character_details.dart';
import 'package:teste/model/character_model.dart';
import 'package:paging/paging.dart';
import 'package:teste/pages/home/home_page.dart';
import 'package:teste/utils/conts.dart';
import 'package:http/http.dart' as http;

class CharacterPage extends StatefulWidget {
  CharacterPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _CharacterPageState createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  static int page = 1;

  @override
  void initState() {
    super.initState();
    page = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColorAppBar,
        title: Text(
          'Characters',
          style: kAppBarTextStyle,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(icon: Icon(Icons.search), onPressed: () {}),
          )
        ],
      ),
      body: Pagination<Result>(
        pageBuilder: (currentSize) => pageData(),
        itemBuilder: (index, item) {
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        CharacterDetails(characterData: item)),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16, 16, 24, 0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: ClipOval(
                          child: Image.network(
                            item.image,
                            width: 70,
                            height: 70,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        flex: 8,
                        child: Text(
                          item.name,
                          style: kListTextStyle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    height: 12.0,
                    color: kDividerColor,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<List<Result>> pageData() async {
    final response = await http.Client().get(
        Uri.parse('https://rickandmortyapi.com/api/character/?page=$page'));
    page++;
    var characterResponse = CharacterModel.fromJson(json.decode(response.body));
    return characterResponse.results;
  }
}
