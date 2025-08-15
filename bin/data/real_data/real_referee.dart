import 'dart:io';
import '../../models/gameMembers/referee.dart';
import '../data_interface/referee_provider.dart';

class RealReferee implements RefereeProvider {
  @override
  Referee getReferee() {
    print('Enter Referee name:');
    String refereeName = stdin.readLineSync()!;

    print('Enter Referee age:');
    int age = int.parse(stdin.readLineSync()!);

    print('Enter Referee nationality:');
    String nationality = stdin.readLineSync()!;

    print('Enter Referee strictness level (1-10):');
    int refereeStrictness = int.parse(stdin.readLineSync()!);

    return Referee(
      name: refereeName,
      age: age,
      nationality: nationality,
      strictnessLevel: refereeStrictness,
    );
  }
}
