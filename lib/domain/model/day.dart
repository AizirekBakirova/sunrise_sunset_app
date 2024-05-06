class Day {
  Day(
      {required this.sunrise,
      required this.sunset,
      required this.solarNoon,
      required this.dayLength});

  final DateTime sunrise;
  final DateTime sunset;
  final DateTime solarNoon;
  final int dayLength;
}
