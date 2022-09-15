import 'dart:io';
import 'package:dio/dio.dart';
import 'package:smart_ix/src/domain/entities/newses.dart';
import '../../core/params/news_request.dart';
import '../../core/resources/data_state.dart';
import '../../domain/repositories/newses_repository.dart';
import '../datasources/remote/newses_api_service.dart';

class NewsesRepositoryImpl implements NewsesRepository {
  final NewsApiService _newsApiService;

  const NewsesRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<Newses>> getNewsWebService(
    NewsRequestParams params,
  ) async {
    try {
      final response = await _newsApiService.getBreakingNews(
        apiKey: params.apiKey,
        user_id: params.userId,
        category: params.category,
        page: params.page,
        pageSize: params.pageSize,
      );

      if (response.statusCode == HttpStatus.ok) {
        Newses newses = Newses(
            userId: (response.data?.userId) ?? "default",
            devices: (response.data?.devices) ?? [],
            services: (response.data?.services) ?? []);
        return DataSuccess(newses);
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
