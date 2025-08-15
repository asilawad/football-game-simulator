import 'dart:io';

import '../data_interface/trainer_provider.dart';
import '../../models/gameMembers/trainer.dart';

class RealTrainer implements TrainerProvider {
  @override
  Trainer getTrainer(int teamNumber) {
    //collect Trainer info
    print('Enter Trainer name for Team $teamNumber:');
    String trainerName = stdin.readLineSync()!;

    print('Enter Trainer age:');
    int trainerAge = int.parse(stdin.readLineSync()!);

    print('Enter Trainer nationality:');
    String trainerNationality = stdin.readLineSync()!;

    print('Enter Trainer strategy specialty:');

    //create Trainer object
    return Trainer(
      name: trainerName,
      age: trainerAge,
      nationality: trainerNationality,
      strategySpecialty: "",
    );
  }
}
