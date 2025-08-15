import 'dart:io';
import 'data_interface/player_provider.dart';
import 'data_interface/trainer_provider.dart';
import 'data_interface/referee_provider.dart';
import 'data_interface/stadium_provider.dart';
import '../models/gameMembers/palyer.dart';
import '../models/gameMembers/trainer.dart';
import '../models/gameMembers/referee.dart';
import '../models/stadium.dart';
import 'dummy_data/dummy_players.dart';
import 'dummy_data/dummy_referee.dart';
import 'dummy_data/dummy_stadium.dart';
import 'dummy_data/dummy_trainers.dart';
import 'real_data/real_player.dart';
import 'real_data/real_referee.dart';
import 'real_data/real_stadium.dart';
import 'real_data/real_trainer.dart';

class DataFactory {
  bool _askYesNo(String question) {
    while (true) {
      stdout.write('$question (y/n): ');
      final answer = (stdin.readLineSync() ?? '').trim().toLowerCase();
      if (answer == 'y' || answer == 'yes') return false;
      if (answer == 'n' || answer == 'no') return true;
      print('Please enter y or n.');
    }
  }

  Trainer getTrainer(int teamNumber) {
    final useDummy = _askYesNo(
        'Do you want to enter the trainer data manually for team$teamNumber?');
    final TrainerProvider provider = useDummy ? DummyTrainers() : RealTrainer();
    return provider.getTrainer(teamNumber);
  }

  List<Player> getPlayers(int teamNumber) {
    final useDummy = _askYesNo(
        'Do you want to enter the player data manually for team$teamNumber?');
    final PlayerProvider provider = useDummy ? DummyPlayers() : RealPlayer();
    return provider.getPlayers(teamNumber);
  }

  Referee getReferee() {
    final useDummy =
        _askYesNo('Do you want to enter the referee data manually?');
    final RefereeProvider provider = useDummy ? DummyReferee() : RealReferee();
    return provider.getReferee();
  }

  Stadium getStadium() {
    final useDummy =
        _askYesNo('Do you want to enter the stadium data manually?');
    final StadiumProvider provider = useDummy ? DummyStadium() : RealStadium();
    return provider.getStadium();
  }
}
