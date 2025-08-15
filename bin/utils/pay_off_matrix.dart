class GameMatrix {
  static Map<String, Map<String, int>> payOffMatrix = {
    'Offensive': {
      'Offensive': 3,
      'Defensive': 1,
      'Balanced': 2,
      'Counter-Attack': -1,
      'Pressing': 0,
      'Park-the-Bus': -2,
    },
    'Defensive': {
      'Offensive': 4,
      'Defensive': 0,
      'Balanced': 1,
      'Counter-Attack': 2,
      'Pressing': -1,
      'Park-the-Bus': 3,
    },
    'Balanced': {
      'Offensive': 1,
      'Defensive': 2,
      'Balanced': 3,
      'Counter-Attack': 0,
      'Pressing': 1,
      'Park-the-Bus': 1,
    },
    'Counter-Attack': {
      'Offensive': 3,
      'Defensive': -1,
      'Balanced': 2,
      'Counter-Attack': 1,
      'Pressing': 0,
      'Park-the-Bus': -2,
    },
    'Pressing': {
      'Offensive': 2,
      'Defensive': -2,
      'Balanced': 1,
      'Counter-Attack': 3,
      'Pressing': 2,
      'Park-the-Bus': 0,
    },
    'Park-the-Bus': {
      'Offensive': 5,
      'Defensive': -1,
      'Balanced': 1,
      'Counter-Attack': 4,
      'Pressing': 1,
      'Park-the-Bus': 0,
    },
  };
}
