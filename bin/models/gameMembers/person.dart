abstract class Person {
  final String name;
  final int age;
  final String nationality;

  Person({
    required this.name,
    required this.age,
    required this.nationality,
  });

  void introduce();
}
