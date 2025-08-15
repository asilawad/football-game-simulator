import '../../models/stadium.dart';
import '../data_interface/stadium_provider.dart';

class DummyStadium implements StadiumProvider {
  @override
  Stadium getStadium() {
    return Stadium(
      name: 'National Stadium',
      location: 'Cairo',
      capacity: 60000,
      weather: 'Sunny',
      turfType: 'Grass',
    );
  }
}
