import 'package:dio/dio.dart';
import '../../../core/utils/constants.dart';
import '../../models/model_of_news/model_of_news.dart';
import '../../models/model_of_weather/model_of_weather.dart';

class _WeatherApiService implements WeatherApiService {
  final Dio _dio;
  String baseUrl;

  _WeatherApiService(this._dio, {this.baseUrl = "https://smart-ix.ai/"}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  @override
  Future<Response<ModelOfWeathers>> getWeather(
      {apiKey = kApiKey, user_id = 'default', country_name = 'us', location_name = '',}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'apiKey': apiKey,
      r'user_id': user_id,
      r'country_name': country_name,
      r'location_name': location_name,
    };
    final _data = <String, dynamic>{};

    final _result = await _dio.request<Map<String, dynamic>>('/weather',
        queryParameters: queryParameters,
        options: Options(
          extra: _extra,
          method: 'GET',
          headers: <String, dynamic>{},
        ),
        data: _data);

    final value = ModelOfWeathers.fromJson(_result.data ?? <String, dynamic>{});
    final response = Response(
      data: value,
      requestOptions: RequestOptions(path: baseUrl + '/weather'),
    );
    return response;
  }
}

abstract class WeatherApiService {
  factory WeatherApiService(Dio dio, {String baseUrl}) = _WeatherApiService;

  Future<Response<ModelOfWeathers>> getWeather({
    String apiKey,
    String user_id,
    String country_name,
    String location_name,
  });
}
