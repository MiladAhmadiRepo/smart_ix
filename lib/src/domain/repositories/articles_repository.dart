import 'package:smart_ix/src/domain/entities/article.dart';

import '../../core/params/article_request.dart';
import '../../core/resources/data_state.dart';

abstract class ArticlesRepository {
  Future<DataState<List<Article>>> getBreakingNewsArticles(ArticlesRequestParams params);
}