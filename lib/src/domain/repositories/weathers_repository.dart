import '../../core/params/weather_request.dart';
import '../../core/resources/data_state.dart';
import '../entities/weathers/weathers.dart';

abstract class WeathersRepository {
  Future<DataState<Weathers>> getWeatherWebService(WeatherRequestParams params);
}
