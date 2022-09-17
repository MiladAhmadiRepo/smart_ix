import 'dart:io';
import 'package:dio/dio.dart';
import '../../core/params/weather_request.dart';
import '../../core/resources/data_state.dart';
import '../../domain/entities/weathers/weathers.dart';
import '../../domain/repositories/weathers_repository.dart';
import '../datasources/remote/weathers_api_service.dart';

class WeathersRepositoryImpl implements WeathersRepository {
  final WeatherApiService _weatherApiService;

  const WeathersRepositoryImpl(this._weatherApiService);

  @override
  Future<DataState<Weathers>> getWeatherWebService(
    WeatherRequestParams params,
  ) async {
    try {
      final response = await _weatherApiService.getWeather(
        apiKey: params.apiKey,
        user_id: params.userId,
        country_name: params.countryName,
        location_name: params.locationName,
      );

      if (response.statusCode == HttpStatus.ok) {
        Weathers weathers = Weathers(
            userId: (response.data?.userId) ?? "default",
            devices: (response.data?.devices) ?? [],
            services: (response.data?.services) ?? []);
        return DataSuccess(weathers);
      }
      return DataFailed(
        DioError(
            error: response.statusMessage,
            response: response,
            type: DioErrorType.response,
            requestOptions: response.requestOptions),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
