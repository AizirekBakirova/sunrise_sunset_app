import 'package:dio/dio.dart';
import 'package:sunrise_sunset_app/data/api/api_day.dart';

class SunriseService {
  static const _BASE_URL = 'https://api.sunrise-sunset.org';

  final Dio _dio = Dio(BaseOptions(baseUrl: _BASE_URL));

  Future<ApiDay> getDay({
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
