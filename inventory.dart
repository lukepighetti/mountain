final inventory = [
  WaterBottle(),
  IceAxe(),
  [IceScrew(), IceScrew()],
];

class WaterBottle {
  final name = 'smart water';
  final volume = Volume.liters(0.85);
}

class Stick {
  final length = Length.centimeters(60);
}

class IceAxeHead {
  final length = Length.centimeters(30);
}

class IceAxe {
  final head = IceAxeHead();
  final handle = Stick();
}

class IceScrew {
  final length = Length.centimeters(15);
}

class Volume {
  Volume.liters(this.liters);
  final double liters;
}

class Temperature {
  Temperature.celsius(this.celsius);

  final double celsius;
  late final double fahrenheit = celsius * 9 / 5 + 32; // IS THIS CORRECT <<
}

class Length {
  Length.centimeters(this.centimeters);
  final double centimeters;
}

// HISTORY:
// I was dropped off with a helicopter.
// I have no idea how I got there