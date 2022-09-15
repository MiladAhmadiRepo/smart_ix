import 'package:dio/dio.dart';
import '../../../core/utils/constants.dart';
import '../../models/model_of_devices/model_of_devices.dart';
import '../../models/model_of_news/model_of_news.dart';

class _DeviceApiService implements DeviceApiService {
  final Dio _dio;
  String baseUrl;

  _DeviceApiService(this._dio, {this.baseUrl = "https://smart-ix.ai/"}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  @override
  Future<Response<ModelOfDevices>> getDevice(
      {apiKey = kApiKey, user_id = 'default',  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'apiKey': apiKey,
      r'user_id': user_id,
    };
    final _data = <String, dynamic>{};

    final _result = await _dio.request<Map<String, dynamic>>('/top-news',
        queryParameters: queryParameters,
        options: Options(
          extra: _extra,
          method: 'GET',
          headers: <String, dynamic>{},
        ),
        data: _data);

    final value = ModelOfDevices.fromJson(_result.data ?? <String, dynamic>{});
    final response = Response(
      data: value,
      requestOptions: RequestOptions(path: baseUrl + '/top-news'),
    );
    return response;
  }


}

abstract class DeviceApiService {
  factory DeviceApiService(Dio dio, {String baseUrl}) = _DeviceApiService;

  Future<Response<ModelOfDevices>> getDevice({
    String apiKey,
    String user_id,
  }  );
}
