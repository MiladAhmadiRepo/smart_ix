import 'package:dio/dio.dart';
import '../../../core/constants.dart';
import '../../models/model_of_news/model_of_news.dart';

class _NewsApiService implements NewsApiService {
  final Dio _dio;
  String baseUrl;

  _NewsApiService(this._dio, {this.baseUrl = "https://smart-ix.ai/"}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  @override
  Future<Response<ModelOfNewses>> getBreakingNews(
      {apiKey = kApiKey, user_id = 'default', category = '', page = 1, pageSize = 100}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'apiKey': apiKey,
      r'user_id': user_id,
      r'category': category,
      r'page': page,
      r'pageSize': pageSize
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

    final value = ModelOfNewses.fromJson(_result.data ?? <String, dynamic>{});
    final response = Response(
      data: value,
      requestOptions: RequestOptions(path: baseUrl + '/top-news'),
    );
    return response;
  }


}

abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  Future<Response<ModelOfNewses>> getBreakingNews({
    String apiKey,
    String user_id,
    String category,
    int page,
    int pageSize,
  }  );
}
