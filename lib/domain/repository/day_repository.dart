import 'package:sunrise_sunset_app/domain/model/day.dart';

abstract class DayRepository {
  Future<Day> getDay({required double latitude, required double longitude});
}
