import 'dart:io';

import 'business_logic/game_simulator.dart';
import 'data/data_factory.dart';
import 'data/team_setup.dart';

void main() {
  print('\t\t\t\t--- Football Game Simulator ---');

  final dataFactory = DataFactory();
  final TeamSetup team = TeamSetup();
  // ===== Team 1 =====
  print('\n--- Team 1 Setup ---\n');
  final trainer1 = dataFactory.getTrainer(1);
  final players1 = dataFactory.getPlayers(1);
  final team1 = team.buildTeam(trainer: trainer1, players: players1);

  // ===== Team 2 =====
  print('\n--- Team 2 Setup ---');
  final trainer2 = dataFactory.getTrainer(2);
  final players2 = dataFactory.getPlayers(2);
  final team2 = team.buildTeam(trainer: trainer2, players: players2);

  // ===== Referee =====
  print('\n--- Referee Setup ---');
  final referee = dataFactory.getReferee();

  // ===== Stadium =====
  print('\n--- Stadium Setup ---');
  final stadium = dataFactory.getStadium();

  // ===== Summary =====
  print('\n=== Summary ===');
  print(
      'Team 1: ${team1.teamName} (${team1.city}) - Players: ${team1.players.length}, Trainer: ${team1.trainer.name}\n');
  print(
      'Team 2: ${team2.teamName} (${team2.city}) - Players: ${team2.players.length}, Trainer: ${team2.trainer.name}\n');
  print('Referee: ${referee.name} (Strictness: ${referee.strictnessLevel})\n');
  print('Stadium: ${stadium.name} - ${stadium.location}\n');

  print('Ready to start the match? (press Enter to continue)');
  stdin.readLineSync();
  GameSimulator(referee: referee, team1: team1, team2: team2, stadium: stadium)
      .simulate();
}
