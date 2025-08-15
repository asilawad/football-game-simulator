import 'gameMembers/palyer.dart';
import 'gameMembers/trainer.dart';

class Team {
  final String _teamName;
  final Trainer _trainer;
  final List<Player> _players;
  final String _city;
  final List<String> _teamColors;

  Team({
    required String teamName,
    required Trainer trainer,
    required List<Player> players,
    String city = '',
    List<String>? teamColors,
  })  : _teamName = teamName,
        _trainer = trainer,
        _players = players,
        _city = city,
        _teamColors = teamColors ?? [];

  String get teamName => _teamName;
  Trainer get trainer => _trainer;
  List<Player> get players => _players;
  String get city => _city;
  List<String> get teamColors => _teamColors;

//calculate total team power
  int get totalPower {
    int playerPower =
        _players.fold(0, (powerSum, player) => powerSum + player.power);
    return playerPower + _trainer.experience;
  }

  //print team info
  void displayTeam() {
    print('Team: $_teamName, City: $_city.\n\n');
    print('Trainer: ${_trainer.name}, Experience: ${_trainer.experience}\n\n');
    print('Players:');
    for (var player in _players) {
      player.introduce();
    }
  }
}
