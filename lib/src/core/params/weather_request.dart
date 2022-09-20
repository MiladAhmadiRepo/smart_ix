import 'package:smart_ix/src/core/constants.dart';

class WeatherRequestParams {
  final String apiKey;
  final String userId;
  final String countryName;
  final String locationName;

  WeatherRequestParams({
    this.apiKey = kApiKey,
    this.userId = 'milad',
    this.countryName = 'Germany',
    this.locationName = 'Stuttgart',
  });
}
