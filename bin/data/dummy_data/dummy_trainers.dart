import '../../models/gameMembers/trainer.dart';
import '../data_interface/trainer_provider.dart';

class DummyTrainers implements TrainerProvider {
  @override
  Trainer getTrainer(int teamNumber) {
    if (teamNumber == 1) {
      return Trainer(
        name: 'Jürgen Klopp',
        age: 54,
        nationality: 'German',
        experience: 15,
        strategySpecialty: 'Offensive',
        motivation: 90,
      );
    } else {
      return Trainer(
        name: 'Pep Guardiola',
        age: 50,
        nationality: 'Spanish',
        experience: 17,
        strategySpecialty: 'Possession',
        motivation: 92,
      );
    }
  }
}
