import 'person.dart';
import 'dart:math';

class Trainer extends Person {
  final int _experience;
  final String _strategySpecialty;
  final int _motivationLevel;

  Trainer({
    required String name,
    required int age,
    required String nationality,
    int? experience,
    required String strategySpecialty,
    int? motivation,
  })  : _experience = experience ?? Random().nextInt(20) + 1,
        _motivationLevel = motivation ?? Random().nextInt(50) + 50,
        _strategySpecialty = strategySpecialty,
        super(name: name, age: age, nationality: nationality);

  int get experience => _experience;
  String get strategySpecialty => _strategySpecialty;
  int get motivation => _motivationLevel;

  @override
  void introduce() {
    print(
        'Trainer $name, Experience: $_experience years, Strategy Specialty: $_strategySpecialty');
  }
}
