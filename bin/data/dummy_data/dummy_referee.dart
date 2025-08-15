import '../../models/gameMembers/referee.dart';
import '../data_interface/referee_provider.dart';

class DummyReferee implements RefereeProvider {
  @override
  Referee getReferee() {
    return Referee(
      name: 'Mark Clattenburg',
      age: 45,
      nationality: 'English',
      strictnessLevel: 7,
    );
  }
}
