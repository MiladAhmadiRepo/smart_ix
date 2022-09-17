import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/newses/newses.dart';
part 'model_of_news.freezed.dart';
part 'model_of_news.g.dart';
//------------------------------------------------------------------------------------

@freezed
class ModelOfNewses with _$ModelOfNewses implements Newses{
  const factory ModelOfNewses({
    required String userId,
    required  List<dynamic> devices,
    required List<ModelOfService> services,
  }) = _ModelOfNewses;

  factory ModelOfNewses.fromJson(Map<String, dynamic> json) => _$ModelOfNewsesFromJson(json);
}
//------------------------------------------------------------------------------------
@freezed
class ModelOfService with _$ModelOfService implements Service{
  const factory ModelOfService({
    required String id,
    required String name,
    @Default('') String companyName,
    @Default('') String apiVersion,
    @Default(false)  bool activityState,
    required ModelOfNews news,
  }) = _ModelOfService;

  factory ModelOfService.fromJson(Map<String, dynamic> json) => _$ModelOfServiceFromJson(json);
}
//------------------------------------------------------------------------------------
@freezed
class ModelOfNews with _$ModelOfNews implements News{
  const factory ModelOfNews({
    required String status,
    required  int totalResults,
    @Default([])  List<ModelOfArticle> articles,
  }) = _ModelOfNews;

  factory ModelOfNews.fromJson(Map<String, dynamic> json) => _$ModelOfNewsFromJson(json);
}
//------------------------------------------------------------------------------------
@freezed
class ModelOfArticle with _$ModelOfArticle implements Article{
  const factory ModelOfArticle({
    required ModelOfSource source,
    @Default('')  String author,
    @Default('') String title,
    @Default('') String description,
    @Default('') String url,
    @Default('')  String urlToImage,
    @Default('')  String publishedAt,
    @Default('') String content,
  }) = _ModelOfArticle;

  factory ModelOfArticle.fromJson(Map<String, dynamic> json) => _$ModelOfArticleFromJson(json);
}
//------------------------------------------------------------------------------------
@freezed
class ModelOfSource with _$ModelOfSource implements Source {
  const factory ModelOfSource({
    @Default('') String id,
    @Default('') String name,
  }) = _ModelOfSource;

  factory ModelOfSource.fromJson(Map<String, dynamic> json) => _$ModelOfSourceFromJson(json);
}
//------------------------------------------------------------------------------------
