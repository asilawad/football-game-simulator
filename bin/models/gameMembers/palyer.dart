import 'dart:math';

import 'person.dart';

class Player extends Person {
  final String _position;
  final int _id;
  final int _power;
  final int _stamina;
  final int _skill;
  final int _jerseyNumber;

  Player({
    required String name,
    required int age,
    required String nationality,
    required String position,
    required int id,
    required int jerseyNumber,
    int? power,
    int? stamina,
    int? skill,
  })  : _power = power ?? Random().nextInt(50) + 50, // قوة عشوائية من 50-99
        _stamina = stamina ?? Random().nextInt(50) + 50,
        _skill = skill ?? Random().nextInt(50) + 50,
        _position = position,
        _id = id,
        _jerseyNumber = jerseyNumber,
        super(name: name, age: age, nationality: nationality);

  //getters
  String get position => _position;
  int get id => _id;
  int get power => _power;
  int get stamina => _stamina;
  int get skill => _skill;
  int get jerseyNumber => _jerseyNumber;

  @override
  void introduce() {
    print(
        'Player $name (#$_jerseyNumber), Position: $_position, Power: $_power\n');
  }
}
