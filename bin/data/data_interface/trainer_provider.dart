import '../../models/gameMembers/trainer.dart';

abstract class TrainerProvider {
  Trainer getTrainer(int teamNumber);
}
