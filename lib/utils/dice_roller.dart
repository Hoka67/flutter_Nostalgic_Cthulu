import 'dart:math';

// Class for rolling dice
class DiceRoller {
  static final Random _random = Random();

  // Method to roll dice
  static int rollDice(int numberOfDice, int numberOfSides) {
    int total = 0;
    for (int i = 0; i < numberOfDice; i++) {
      total += _random.nextInt(numberOfSides) + 1; // Random number generation
    }
    return total;
  }
}
