import '../utils/dice_roller.dart';

class Character {
  final String name;
  final String className;
  final String imagePath;

  // 能力値 (初期値はすべて0)
  int strength = 0;
  int constitution = 0;
  int power = 0;
  int dexterity = 0;
  int appearance = 0;
  int size = 0;
  int intelligence = 0;
  int education = 0;

  // 各職業の能力値のダイス数と上限値
  final Map<String, Map<String, dynamic>> classStatData = {
    '旅人': {
      'strength': {'dice': 2, 'max': 15},
      'constitution': {'dice': 2, 'max': 15},
      'power': {'dice': 2, 'max': 15},
      'dexterity': {'dice': 2, 'max': 15},
      'appearance': {'dice': 2, 'max': 15},
      'size': {'dice': 2, 'max': 15},
      'intelligence': {'dice': 2, 'max': 15},
      'education': {'dice': 2, 'max': 15},
    },
    '戦士': {
      'strength': {'dice': 3, 'max': 18},
      'constitution': {'dice': 3, 'max': 18},
      'power': {'dice': 2, 'max': 12},
      'dexterity': {'dice': 2, 'max': 15},
      'appearance': {'dice': 2, 'max': 12},
      'size': {'dice': 2, 'max': 18},
      'intelligence': {'dice': 2, 'max': 12},
      'education': {'dice': 2, 'max': 12},
    },
    '僧侶': {
      'strength': {'dice': 2, 'max': 12},
      'constitution': {'dice': 2, 'max': 15},
      'power': {'dice': 3, 'max': 18},
      'dexterity': {'dice': 2, 'max': 12},
      'appearance': {'dice': 2, 'max': 15},
      'size': {'dice': 2, 'max': 15},
      'intelligence': {'dice': 2, 'max': 18},
      'education': {'dice': 3, 'max': 15},
    },
    '盗賊': {
      'strength': {'dice': 2, 'max': 15},
      'constitution': {'dice': 2, 'max': 15},
      'power': {'dice': 2, 'max': 12},
      'dexterity': {'dice': 3, 'max': 18},
      'appearance': {'dice': 2, 'max': 15},
      'size': {'dice': 2, 'max': 12},
      'intelligence': {'dice': 2, 'max': 15},
      'education': {'dice': 2, 'max': 15},
    },
    '魔法使い': {
      'strength': {'dice': 2, 'max': 10},
      'constitution': {'dice': 2, 'max': 12},
      'power': {'dice': 3, 'max': 18},
      'dexterity': {'dice': 2, 'max': 12},
      'appearance': {'dice': 2, 'max': 15},
      'size': {'dice': 2, 'max': 10},
      'intelligence': {'dice': 3, 'max': 18},
      'education': {'dice': 3, 'max': 18},
    },
    '拳闘士': {
      'strength': {'dice': 3, 'max': 18},
      'constitution': {'dice': 3, 'max': 15},
      'power': {'dice': 2, 'max': 12},
      'dexterity': {'dice': 3, 'max': 18},
      'appearance': {'dice': 2, 'max': 15},
      'size': {'dice': 2, 'max': 15},
      'intelligence': {'dice': 2, 'max': 12},
      'education': {'dice': 2, 'max': 12},
    },
  };

  // Japanese status names for display
  static const Map<String, String> statNamesJp = {
    'strength': '筋力',
    'constitution': '体力',
    'power': '精神力',
    'dexterity': '敏捷性',
    'appearance': '魅力',
    'size': '体格',
    'intelligence': '知性',
    'education': '教養',
  };

  // Constructor
  Character({
    required this.name,
    required this.className,
    required this.imagePath,
  });

  // Method to roll dice and determine status values
  void rollStats() {
    final statData = classStatData[className]!;
    strength = DiceRoller.rollDice(statData['strength']['dice'], 6);
    strength = strength.clamp(3, statData['strength']['max']).toInt();
    constitution = DiceRoller.rollDice(statData['constitution']['dice'], 6);
    constitution =
        constitution.clamp(3, statData['constitution']['max']).toInt();
    power = DiceRoller.rollDice(statData['power']['dice'], 6);
    power = power.clamp(3, statData['power']['max']).toInt();
    dexterity = DiceRoller.rollDice(statData['dexterity']['dice'], 6);
    dexterity = dexterity.clamp(3, statData['dexterity']['max']).toInt();
    appearance = DiceRoller.rollDice(statData['appearance']['dice'], 6);
    appearance = appearance.clamp(3, statData['appearance']['max']).toInt();
    size = (DiceRoller.rollDice(statData['size']['dice'], 6) + 6);
    size = size.clamp(3, statData['size']['max']).toInt();
    intelligence =
        (DiceRoller.rollDice(statData['intelligence']['dice'], 6) + 6);
    intelligence =
        intelligence.clamp(3, statData['intelligence']['max']).toInt();
    education = DiceRoller.rollDice(statData['education']['dice'], 6);
    education = education.clamp(3, statData['education']['max']).toInt();
  }

  // [] operator to access status values
  int operator [](String statName) {
    switch (statName) {
      case 'strength':
        return strength;
      case 'constitution':
        return constitution;
      case 'power':
        return power;
      case 'dexterity':
        return dexterity;
      case 'appearance':
        return appearance;
      case 'size':
        return size;
      case 'intelligence':
        return intelligence;
      case 'education':
        return education;
      default:
        throw ArgumentError('Invalid stat name: $statName');
    }
  }
}
