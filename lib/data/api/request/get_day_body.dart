class GetDayBody {
  GetDayBody({required this.latitude, required this.longitude});
  final double latitude;
  final double longitude;

  Map<String, dynamic> toApi() {
    return {
      'lat': latitude,
      'lng': longitude,
      'formatted': 0,
    };
  }
}
