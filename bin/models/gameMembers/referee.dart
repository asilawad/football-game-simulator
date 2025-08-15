import 'person.dart';

class Referee extends Person {
  final int _strictnessLevel;

  Referee(
      {required String name,
      required int age,
      required String nationality,
      required int strictnessLevel})
      : _strictnessLevel = strictnessLevel,
        super(name: name, age: age, nationality: nationality);

  int get strictnessLevel => _strictnessLevel;

  @override
  void introduce() {
    print('Referee: $name, Strictness: $_strictnessLevel');
  }
}
