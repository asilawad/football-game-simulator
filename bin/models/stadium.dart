class Stadium {
  final String _name;
  final String _location;
  final int _capacity;
  final String _weather;
  final String _turfType;

  Stadium({
    required String name,
    required String location,
    int capacity = 50000,
    String weather = 'Sunny',
    String turfType = 'Grass',
  })  : _name = name,
        _location = location,
        _capacity = capacity,
        _weather = weather,
        _turfType = turfType;

  String get name => _name;
  String get location => _location;
  int get capacity => _capacity;
  String get weather => _weather;
  String get turfType => _turfType;

  void displayInfo() {
    print('Stadium: $_name, Location: $_location, Capacity: $_capacity');
    print('Weather: $_weather, Turf: $_turfType\n\n');
  }
}
