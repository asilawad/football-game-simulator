import 'dart:io';

import '../utils/strategy_options.dart';

class TeamStrategyChoosing {
  static String chooseStrategy() {
    StrategyOption.strategyOptions.forEach((number, strategy) {
      print("$number: $strategy");
    });
    int? choice;

    do {
      stdout.write("Enter strategy number: ");
      choice = int.tryParse(stdin.readLineSync() ?? "");
    } while (
        choice == null || !StrategyOption.strategyOptions.containsKey(choice));

    return StrategyOption.strategyOptions[choice]!;
  }
}
