import 'package:smart_ix/src/core/params/article_request.dart';
import 'package:smart_ix/src/core/resources/data_state.dart';
import 'package:smart_ix/src/core/usecases/usecase.dart';
import 'package:smart_ix/src/domain/entities/article.dart';
import 'package:smart_ix/src/domain/repositories/articles_repository.dart';

class GetArticlesUseCase implements UseCase<DataState<List<Article>>,ArticlesRequestParams>{

  final ArticlesRepository _articlesRepository;
  GetArticlesUseCase(this._articlesRepository);

  @override
  Future<DataState<List<Article>>> call({required ArticlesRequestParams params}) {
    return _articlesRepository.getBreakingNewsArticles(params);
  }
}