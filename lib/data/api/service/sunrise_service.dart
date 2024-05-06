import 'package:dio/dio.dart';
import 'package:sunrise_sunset_app/data/api/model/api_day.dart';
import 'package:sunrise_sunset_app/data/api/request/get_day_body.dart';

class SunriseService {
  static const _BASE_URL = 'https://api.sunrise-sunset.org';

  final Dio _dio = Dio(BaseOptions(baseUrl: _BASE_URL));

  Future<ApiDay> getDay(
    GetDayBody body, {
    required double latitude,
    required double longitude,
  }) async {
    final query = {'lat': latitude, 'lng': longitude, 'formatted': 0};
    final response = await _dio.get(
      '/json',
      queryParameters: query,
    );
    return ApiDay.fromApi(response.data);
  }
}
