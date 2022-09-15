// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_of_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelOfNewses _$$_ModelOfNewsesFromJson(Map<String, dynamic> json) =>
    _$_ModelOfNewses(
      userId: json['userId'] as String,
      devices: json['devices'] as List<dynamic>,
      services: (json['services'] as List<dynamic>)
          .map((e) => ModelOfService.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ModelOfNewsesToJson(_$_ModelOfNewses instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'devices': instance.devices,
      'services': instance.services,
    };

_$_ModelOfService _$$_ModelOfServiceFromJson(Map<String, dynamic> json) =>
    _$_ModelOfService(
      id: json['id'] as String,
      name: json['name'] as String,
      companyName: json['companyName'] as String? ?? '',
      apiVersion: json['apiVersion'] as String? ?? '',
      activityState: json['activityState'] as bool? ?? false,
      news: ModelOfNews.fromJson(json['news'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ModelOfServiceToJson(_$_ModelOfService instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'companyName': instance.companyName,
      'apiVersion': instance.apiVersion,
      'activityState': instance.activityState,
      'news': instance.news,
    };

_$_ModelOfNews _$$_ModelOfNewsFromJson(Map<String, dynamic> json) =>
    _$_ModelOfNews(
      status: json['status'] as String,
      totalResults: json['totalResults'] as int,
      articles: (json['articles'] as List<dynamic>?)
              ?.map((e) => ModelOfArticle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ModelOfNewsToJson(_$_ModelOfNews instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };

_$_ModelOfArticle _$$_ModelOfArticleFromJson(Map<String, dynamic> json) =>
    _$_ModelOfArticle(
      source: ModelOfSource.fromJson(json['source'] as Map<String, dynamic>),
      author: json['author'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      url: json['url'] as String? ?? '',
      urlToImage: json['urlToImage'] as String? ?? '',
      publishedAt: json['publishedAt'] as String? ?? '',
      content: json['content'] as String? ?? '',
    );

Map<String, dynamic> _$$_ModelOfArticleToJson(_$_ModelOfArticle instance) =>
    <String, dynamic>{
      'source': instance.source,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };

_$_ModelOfSource _$$_ModelOfSourceFromJson(Map<String, dynamic> json) =>
    _$_ModelOfSource(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_ModelOfSourceToJson(_$_ModelOfSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
