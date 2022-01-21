import 'package:flutter/cupertino.dart';
import 'package:teste/model/character_model.dart';
import 'package:teste/repository/character_repository.dart';

class CharacterController extends ChangeNotifier {
  final _repository = CharacterRepository();
  CharacterModel characterModel;

  Future<CharacterModel> fetchAll({int page}) async {
    characterModel =
        (await _repository.getCharacters(page: page)) as CharacterModel;
    return characterModel;
  }

  String parseEnumStatus(String status) {
    switch (status) {
      case 'ALIVE':
        return ParseEnumStatus.ALIVE;
        break;
      case 'DEAD':
        return ParseEnumStatus.DEAD;
        break;
      default:
        return ParseEnumStatus.UNKNOWN;
    }
  }

  String parseEnumGender(String gender) {
    switch (gender) {
      case 'MALE':
        return ParseEnumGender.MALE;
        break;
      case 'FEMALE':
        return ParseEnumGender.FEMALE;
        break;
      case 'GENDERLESS':
        return ParseEnumGender.GENDERLESS;
        break;
      default:
        return ParseEnumGender.UNKNOWN;
    }
  }
}

abstract class ParseEnumStatus {
  static const ALIVE = 'Alive';
  static const DEAD = 'Dead';
  static const UNKNOWN = 'Unknown';
}

abstract class ParseEnumGender {
  static const MALE = 'Male';
  static const FEMALE = 'Female';
  static const GENDERLESS = 'Genderless';
  static const UNKNOWN = 'Unknown';
}
