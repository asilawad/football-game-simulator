import '../../models/gameMembers/palyer.dart';

abstract class PlayerProvider {
  List<Player> getPlayers(int teamNumber);
}
