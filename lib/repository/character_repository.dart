import 'package:teste/model/character_model.dart';
import 'package:teste/service/provider.dart';

class CharacterRepository {
  RickAndMortyProvider _rickAndMortyProvider = RickAndMortyProvider();

  Future<List<Result>> getCharacters({int page}) {
    return _rickAndMortyProvider.pageData(page: page);
  }
}
