import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:teste/model/character_model.dart';

class RickAndMortyProvider {
  static const URL_BASE = 'https://rickandmortyapi.com/api';
  static const CHARACTERS = '/character';

  Future<List<Result>> pageData({int page}) async {
    CharacterModel characterModel;
    try {
      final response =
          await http.get(Uri.parse('$URL_BASE$CHARACTERS?page=$page'));
      print('statusCode: ${response.statusCode}');
      if (response.statusCode == 200) {
        characterModel = CharacterModel.fromJson(jsonDecode(response.body));
        print('body: ${response.body}');
      } else {
        print('Status Code: ${response.statusCode}');
      }
    } catch (exception, stacktrace) {}
    return characterModel.results;
  }
}
