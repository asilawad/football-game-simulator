import '../utils/pay_off_matrix.dart';
import '../models/gameMembers/referee.dart';
import '../models/team.dart';
import '../models/stadium.dart';
import 'dart:math';

class GameSimulator {
  final Team team1;
  final Team team2;
  final Stadium stadium;
  final Referee referee;

  GameSimulator({
    required this.team1,
    required this.team2,
    required this.stadium,
    required this.referee,
  });

  void simulate() {
    print('--- Match Simulation ---');
    stadium.displayInfo();
    team1.displayTeam();
    team2.displayTeam();
    referee.introduce();

    int power1 = _calculateTeamPower(team1, team1.trainer.strategySpecialty,
        team2.trainer.strategySpecialty);
    int power2 = _calculateTeamPower(team2, team2.trainer.strategySpecialty,
        team1.trainer.strategySpecialty);

    print('\n\nTeam 1 Power: $power1');
    print('Team 2 Power: $power2');

    _getWinner(power1, power2);
  }

  int _calculateTeamPower(Team team, String strategy, String opponentStrategy) {
    int basePower = team.totalPower;
    int strategyBonus =
        GameMatrix.payOffMatrix[strategy]?[opponentStrategy] ?? 0;
    int randomFactor = Random().nextInt(10);

    return basePower + strategyBonus + randomFactor;
  }

  void _getWinner(int power1, int power2) {
    if (power1 > power2) {
      print('${team1.teamName} wins!');
    } else if (power2 > power1) {
      print('${team2.teamName} wins!');
    } else {
      print('It\'s a draw!');
    }
  }
}
