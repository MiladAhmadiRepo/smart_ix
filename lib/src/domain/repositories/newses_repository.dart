import '../../core/params/news_request.dart';
import '../../core/resources/data_state.dart';
import '../entities/newses.dart';

abstract class NewsesRepository {
  Future<DataState<Newses>> getNewsWebService(NewsRequestParams params);
}
