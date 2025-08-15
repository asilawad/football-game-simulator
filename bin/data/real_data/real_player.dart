import 'dart:io';

import '../../models/gameMembers/palyer.dart';
import '../data_interface/player_provider.dart';

class RealPlayer implements PlayerProvider {
  @override
  List<Player> getPlayers(int teamNumber) {
    //collect players info
    print('Enter number of players for Team $teamNumber:');
    int teamPlayersCount = int.parse(stdin.readLineSync()!);
    List<Player> teamPlayers = [];

    for (int i = 0; i < teamPlayersCount; i++) {
      print('Enter Player ${i + 1} name:');
      String playerName = stdin.readLineSync()!;

      print('Enter Player ID:');
      int playerId = int.parse(stdin.readLineSync()!);

      print('Enter Player age:');
      int playerAge = int.parse(stdin.readLineSync()!);

      print('Enter Player nationality:');
      String playerNationality = stdin.readLineSync()!;

      print('Enter Player position:');
      String playerPosition = stdin.readLineSync()!;

      print('Enter Player jersey number:');
      int jerseyNumber = int.parse(stdin.readLineSync()!);

      //create Player object
      Player player = Player(
        name: playerName,
        age: playerAge,
        nationality: playerNationality,
        position: playerPosition,
        id: playerId,
        jerseyNumber: jerseyNumber,
      );

      teamPlayers.add(player);
    }
    return teamPlayers;
  }
}
