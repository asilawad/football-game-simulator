import 'dart:io';

import '../../models/stadium.dart';
import '../data_interface/stadium_provider.dart';

class RealStadium implements StadiumProvider {
  @override
  Stadium getStadium() {
    print('Enter Stadium name:');
    String stadiumName = stdin.readLineSync()!;

    print('Enter Stadium location:');
    String stadiumLocation = stdin.readLineSync()!;

    print('Enter Stadium capacity:');
    int stadiumCapacity = int.parse(stdin.readLineSync()!);

    print('Enter Stadium weather:');
    String stadiumWeather = stdin.readLineSync()!;

    print('Enter Stadium turf type:');
    String stadiumTurfType = stdin.readLineSync()!;

    return Stadium(
      name: stadiumName,
      location: stadiumLocation,
      capacity: stadiumCapacity,
      weather: stadiumWeather,
      turfType: stadiumTurfType,
    );
  }
}
