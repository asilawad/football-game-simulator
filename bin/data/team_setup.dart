import 'dart:io';

import '../models/gameMembers/palyer.dart';
import '../models/gameMembers/trainer.dart';
import '../models/team.dart';

class TeamSetup {
  Team buildTeam({
    required Trainer trainer,
    required List<Player> players,
  }) {
    stdout.write('Enter Team name: ');
    String name = stdin.readLineSync()!;

    stdout.write('Enter Team city: ');
    String city = stdin.readLineSync()!;

    stdout.write('Enter Team colors (comma separated): ');
    List<String> colors =
        stdin.readLineSync()!.split(',').map((s) => s.trim()).toList();

    return Team(
      teamName: name,
      city: city,
      teamColors: colors,
      trainer: trainer,
      players: players,
    );
  }
}
