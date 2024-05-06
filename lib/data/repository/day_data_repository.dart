// ignore_for_file: non_constant_identifier_names

import 'package:sunrise_sunset_app/data/api/api_util.dart';
import 'package:sunrise_sunset_app/domain/model/day.dart';
import 'package:sunrise_sunset_app/domain/repository/day_repository.dart';

class DayDataRepository extends DayRepository {
  final ApiUtil _apiUtil;

  DayDataRepository(this._apiUtil);

  @override
  Future<Day> getDay({double latitude, double longitude}) {
    return _apiUtil.getDay(latitude: latitude, longitude: longitude);
  }
}
