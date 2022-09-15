// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model_of_news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelOfNewses _$ModelOfNewsesFromJson(Map<String, dynamic> json) {
  return _ModelOfNewses.fromJson(json);
}

/// @nodoc
mixin _$ModelOfNewses {
  String get userId => throw _privateConstructorUsedError;
  List<dynamic> get devices => throw _privateConstructorUsedError;
  List<ModelOfService> get services => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfNewsesCopyWith<ModelOfNewses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfNewsesCopyWith<$Res> {
  factory $ModelOfNewsesCopyWith(
          ModelOfNewses value, $Res Function(ModelOfNewses) then) =
      _$ModelOfNewsesCopyWithImpl<$Res>;
  $Res call(
      {String userId, List<dynamic> devices, List<ModelOfService> services});
}

/// @nodoc
class _$ModelOfNewsesCopyWithImpl<$Res>
    implements $ModelOfNewsesCopyWith<$Res> {
  _$ModelOfNewsesCopyWithImpl(this._value, this._then);

  final ModelOfNewses _value;
  // ignore: unused_field
  final $Res Function(ModelOfNewses) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? devices = freezed,
    Object? services = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ModelOfService>,
    ));
  }
}

/// @nodoc
abstract class _$$_ModelOfNewsesCopyWith<$Res>
    implements $ModelOfNewsesCopyWith<$Res> {
  factory _$$_ModelOfNewsesCopyWith(
          _$_ModelOfNewses value, $Res Function(_$_ModelOfNewses) then) =
      __$$_ModelOfNewsesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId, List<dynamic> devices, List<ModelOfService> services});
}

/// @nodoc
class __$$_ModelOfNewsesCopyWithImpl<$Res>
    extends _$ModelOfNewsesCopyWithImpl<$Res>
    implements _$$_ModelOfNewsesCopyWith<$Res> {
  __$$_ModelOfNewsesCopyWithImpl(
      _$_ModelOfNewses _value, $Res Function(_$_ModelOfNewses) _then)
      : super(_value, (v) => _then(v as _$_ModelOfNewses));

  @override
  _$_ModelOfNewses get _value => super._value as _$_ModelOfNewses;

  @override
  $Res call({
    Object? userId = freezed,
    Object? devices = freezed,
    Object? services = freezed,
  }) {
    return _then(_$_ModelOfNewses(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      devices: devices == freezed
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      services: services == freezed
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ModelOfService>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfNewses implements _ModelOfNewses {
  const _$_ModelOfNewses(
      {required this.userId,
      required final List<dynamic> devices,
      required final List<ModelOfService> services})
      : _devices = devices,
        _services = services;

  factory _$_ModelOfNewses.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfNewsesFromJson(json);

  @override
  final String userId;
  final List<dynamic> _devices;
  @override
  List<dynamic> get devices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  final List<ModelOfService> _services;
  @override
  List<ModelOfService> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ModelOfNewses(userId: $userId, devices: $devices, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfNewses &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(_devices),
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOfNewsesCopyWith<_$_ModelOfNewses> get copyWith =>
      __$$_ModelOfNewsesCopyWithImpl<_$_ModelOfNewses>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfNewsesToJson(
      this,
    );
  }
}

abstract class _ModelOfNewses implements ModelOfNewses {
  const factory _ModelOfNewses(
      {required final String userId,
      required final List<dynamic> devices,
      required final List<ModelOfService> services}) = _$_ModelOfNewses;

  factory _ModelOfNewses.fromJson(Map<String, dynamic> json) =
      _$_ModelOfNewses.fromJson;

  @override
  String get userId;
  @override
  List<dynamic> get devices;
  @override
  List<ModelOfService> get services;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfNewsesCopyWith<_$_ModelOfNewses> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelOfService _$ModelOfServiceFromJson(Map<String, dynamic> json) {
  return _ModelOfService.fromJson(json);
}

/// @nodoc
mixin _$ModelOfService {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String get apiVersion => throw _privateConstructorUsedError;
  bool get activityState => throw _privateConstructorUsedError;
  ModelOfNews get news => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfServiceCopyWith<ModelOfService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfServiceCopyWith<$Res> {
  factory $ModelOfServiceCopyWith(
          ModelOfService value, $Res Function(ModelOfService) then) =
      _$ModelOfServiceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String companyName,
      String apiVersion,
      bool activityState,
      ModelOfNews news});

  $ModelOfNewsCopyWith<$Res> get news;
}

/// @nodoc
class _$ModelOfServiceCopyWithImpl<$Res>
    implements $ModelOfServiceCopyWith<$Res> {
  _$ModelOfServiceCopyWithImpl(this._value, this._then);

  final ModelOfService _value;
  // ignore: unused_field
  final $Res Function(ModelOfService) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? companyName = freezed,
    Object? apiVersion = freezed,
    Object? activityState = freezed,
    Object? news = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: apiVersion == freezed
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String,
      activityState: activityState == freezed
          ? _value.activityState
          : activityState // ignore: cast_nullable_to_non_nullable
              as bool,
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as ModelOfNews,
    ));
  }

  @override
  $ModelOfNewsCopyWith<$Res> get news {
    return $ModelOfNewsCopyWith<$Res>(_value.news, (value) {
      return _then(_value.copyWith(news: value));
    });
  }
}

/// @nodoc
abstract class _$$_ModelOfServiceCopyWith<$Res>
    implements $ModelOfServiceCopyWith<$Res> {
  factory _$$_ModelOfServiceCopyWith(
          _$_ModelOfService value, $Res Function(_$_ModelOfService) then) =
      __$$_ModelOfServiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String companyName,
      String apiVersion,
      bool activityState,
      ModelOfNews news});

  @override
  $ModelOfNewsCopyWith<$Res> get news;
}

/// @nodoc
class __$$_ModelOfServiceCopyWithImpl<$Res>
    extends _$ModelOfServiceCopyWithImpl<$Res>
    implements _$$_ModelOfServiceCopyWith<$Res> {
  __$$_ModelOfServiceCopyWithImpl(
      _$_ModelOfService _value, $Res Function(_$_ModelOfService) _then)
      : super(_value, (v) => _then(v as _$_ModelOfService));

  @override
  _$_ModelOfService get _value => super._value as _$_ModelOfService;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? companyName = freezed,
    Object? apiVersion = freezed,
    Object? activityState = freezed,
    Object? news = freezed,
  }) {
    return _then(_$_ModelOfService(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: apiVersion == freezed
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String,
      activityState: activityState == freezed
          ? _value.activityState
          : activityState // ignore: cast_nullable_to_non_nullable
              as bool,
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as ModelOfNews,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfService implements _ModelOfService {
  const _$_ModelOfService(
      {required this.id,
      required this.name,
      this.companyName = '',
      this.apiVersion = '',
      this.activityState = false,
      required this.news});

  factory _$_ModelOfService.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfServiceFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final String companyName;
  @override
  @JsonKey()
  final String apiVersion;
  @override
  @JsonKey()
  final bool activityState;
  @override
  final ModelOfNews news;

  @override
  String toString() {
    return 'ModelOfService(id: $id, name: $name, companyName: $companyName, apiVersion: $apiVersion, activityState: $activityState, news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfService &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality()
                .equals(other.apiVersion, apiVersion) &&
            const DeepCollectionEquality()
                .equals(other.activityState, activityState) &&
            const DeepCollectionEquality().equals(other.news, news));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(apiVersion),
      const DeepCollectionEquality().hash(activityState),
      const DeepCollectionEquality().hash(news));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOfServiceCopyWith<_$_ModelOfService> get copyWith =>
      __$$_ModelOfServiceCopyWithImpl<_$_ModelOfService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfServiceToJson(
      this,
    );
  }
}

abstract class _ModelOfService implements ModelOfService {
  const factory _ModelOfService(
      {required final String id,
      required final String name,
      final String companyName,
      final String apiVersion,
      final bool activityState,
      required final ModelOfNews news}) = _$_ModelOfService;

  factory _ModelOfService.fromJson(Map<String, dynamic> json) =
      _$_ModelOfService.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get companyName;
  @override
  String get apiVersion;
  @override
  bool get activityState;
  @override
  ModelOfNews get news;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfServiceCopyWith<_$_ModelOfService> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelOfNews _$ModelOfNewsFromJson(Map<String, dynamic> json) {
  return _ModelOfNews.fromJson(json);
}

/// @nodoc
mixin _$ModelOfNews {
  String get status => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<ModelOfArticle> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfNewsCopyWith<ModelOfNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfNewsCopyWith<$Res> {
  factory $ModelOfNewsCopyWith(
          ModelOfNews value, $Res Function(ModelOfNews) then) =
      _$ModelOfNewsCopyWithImpl<$Res>;
  $Res call({String status, int totalResults, List<ModelOfArticle> articles});
}

/// @nodoc
class _$ModelOfNewsCopyWithImpl<$Res> implements $ModelOfNewsCopyWith<$Res> {
  _$ModelOfNewsCopyWithImpl(this._value, this._then);

  final ModelOfNews _value;
  // ignore: unused_field
  final $Res Function(ModelOfNews) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ModelOfArticle>,
    ));
  }
}

/// @nodoc
abstract class _$$_ModelOfNewsCopyWith<$Res>
    implements $ModelOfNewsCopyWith<$Res> {
  factory _$$_ModelOfNewsCopyWith(
          _$_ModelOfNews value, $Res Function(_$_ModelOfNews) then) =
      __$$_ModelOfNewsCopyWithImpl<$Res>;
  @override
  $Res call({String status, int totalResults, List<ModelOfArticle> articles});
}

/// @nodoc
class __$$_ModelOfNewsCopyWithImpl<$Res> extends _$ModelOfNewsCopyWithImpl<$Res>
    implements _$$_ModelOfNewsCopyWith<$Res> {
  __$$_ModelOfNewsCopyWithImpl(
      _$_ModelOfNews _value, $Res Function(_$_ModelOfNews) _then)
      : super(_value, (v) => _then(v as _$_ModelOfNews));

  @override
  _$_ModelOfNews get _value => super._value as _$_ModelOfNews;

  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_$_ModelOfNews(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: articles == freezed
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ModelOfArticle>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfNews implements _ModelOfNews {
  const _$_ModelOfNews(
      {required this.status,
      required this.totalResults,
      final List<ModelOfArticle> articles = const []})
      : _articles = articles;

  factory _$_ModelOfNews.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfNewsFromJson(json);

  @override
  final String status;
  @override
  final int totalResults;
  final List<ModelOfArticle> _articles;
  @override
  @JsonKey()
  List<ModelOfArticle> get articles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'ModelOfNews(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfNews &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(totalResults),
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOfNewsCopyWith<_$_ModelOfNews> get copyWith =>
      __$$_ModelOfNewsCopyWithImpl<_$_ModelOfNews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfNewsToJson(
      this,
    );
  }
}

abstract class _ModelOfNews implements ModelOfNews {
  const factory _ModelOfNews(
      {required final String status,
      required final int totalResults,
      final List<ModelOfArticle> articles}) = _$_ModelOfNews;

  factory _ModelOfNews.fromJson(Map<String, dynamic> json) =
      _$_ModelOfNews.fromJson;

  @override
  String get status;
  @override
  int get totalResults;
  @override
  List<ModelOfArticle> get articles;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfNewsCopyWith<_$_ModelOfNews> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelOfArticle _$ModelOfArticleFromJson(Map<String, dynamic> json) {
  return _ModelOfArticle.fromJson(json);
}

/// @nodoc
mixin _$ModelOfArticle {
  ModelOfSource get source => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get urlToImage => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfArticleCopyWith<ModelOfArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfArticleCopyWith<$Res> {
  factory $ModelOfArticleCopyWith(
          ModelOfArticle value, $Res Function(ModelOfArticle) then) =
      _$ModelOfArticleCopyWithImpl<$Res>;
  $Res call(
      {ModelOfSource source,
      String author,
      String title,
      String description,
      String url,
      String urlToImage,
      String publishedAt,
      String content});

  $ModelOfSourceCopyWith<$Res> get source;
}

/// @nodoc
class _$ModelOfArticleCopyWithImpl<$Res>
    implements $ModelOfArticleCopyWith<$Res> {
  _$ModelOfArticleCopyWithImpl(this._value, this._then);

  final ModelOfArticle _value;
  // ignore: unused_field
  final $Res Function(ModelOfArticle) _then;

  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ModelOfSource,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ModelOfSourceCopyWith<$Res> get source {
    return $ModelOfSourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value));
    });
  }
}

/// @nodoc
abstract class _$$_ModelOfArticleCopyWith<$Res>
    implements $ModelOfArticleCopyWith<$Res> {
  factory _$$_ModelOfArticleCopyWith(
          _$_ModelOfArticle value, $Res Function(_$_ModelOfArticle) then) =
      __$$_ModelOfArticleCopyWithImpl<$Res>;
  @override
  $Res call(
      {ModelOfSource source,
      String author,
      String title,
      String description,
      String url,
      String urlToImage,
      String publishedAt,
      String content});

  @override
  $ModelOfSourceCopyWith<$Res> get source;
}

/// @nodoc
class __$$_ModelOfArticleCopyWithImpl<$Res>
    extends _$ModelOfArticleCopyWithImpl<$Res>
    implements _$$_ModelOfArticleCopyWith<$Res> {
  __$$_ModelOfArticleCopyWithImpl(
      _$_ModelOfArticle _value, $Res Function(_$_ModelOfArticle) _then)
      : super(_value, (v) => _then(v as _$_ModelOfArticle));

  @override
  _$_ModelOfArticle get _value => super._value as _$_ModelOfArticle;

  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_ModelOfArticle(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ModelOfSource,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfArticle implements _ModelOfArticle {
  const _$_ModelOfArticle(
      {required this.source,
      this.author = '',
      this.title = '',
      this.description = '',
      this.url = '',
      this.urlToImage = '',
      this.publishedAt = '',
      this.content = ''});

  factory _$_ModelOfArticle.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfArticleFromJson(json);

  @override
  final ModelOfSource source;
  @override
  @JsonKey()
  final String author;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String urlToImage;
  @override
  @JsonKey()
  final String publishedAt;
  @override
  @JsonKey()
  final String content;

  @override
  String toString() {
    return 'ModelOfArticle(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfArticle &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.urlToImage, urlToImage) &&
            const DeepCollectionEquality()
                .equals(other.publishedAt, publishedAt) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(urlToImage),
      const DeepCollectionEquality().hash(publishedAt),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOfArticleCopyWith<_$_ModelOfArticle> get copyWith =>
      __$$_ModelOfArticleCopyWithImpl<_$_ModelOfArticle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfArticleToJson(
      this,
    );
  }
}

abstract class _ModelOfArticle implements ModelOfArticle {
  const factory _ModelOfArticle(
      {required final ModelOfSource source,
      final String author,
      final String title,
      final String description,
      final String url,
      final String urlToImage,
      final String publishedAt,
      final String content}) = _$_ModelOfArticle;

  factory _ModelOfArticle.fromJson(Map<String, dynamic> json) =
      _$_ModelOfArticle.fromJson;

  @override
  ModelOfSource get source;
  @override
  String get author;
  @override
  String get title;
  @override
  String get description;
  @override
  String get url;
  @override
  String get urlToImage;
  @override
  String get publishedAt;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfArticleCopyWith<_$_ModelOfArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelOfSource _$ModelOfSourceFromJson(Map<String, dynamic> json) {
  return _ModelOfSource.fromJson(json);
}

/// @nodoc
mixin _$ModelOfSource {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfSourceCopyWith<ModelOfSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfSourceCopyWith<$Res> {
  factory $ModelOfSourceCopyWith(
          ModelOfSource value, $Res Function(ModelOfSource) then) =
      _$ModelOfSourceCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$ModelOfSourceCopyWithImpl<$Res>
    implements $ModelOfSourceCopyWith<$Res> {
  _$ModelOfSourceCopyWithImpl(this._value, this._then);

  final ModelOfSource _value;
  // ignore: unused_field
  final $Res Function(ModelOfSource) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ModelOfSourceCopyWith<$Res>
    implements $ModelOfSourceCopyWith<$Res> {
  factory _$$_ModelOfSourceCopyWith(
          _$_ModelOfSource value, $Res Function(_$_ModelOfSource) then) =
      __$$_ModelOfSourceCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$$_ModelOfSourceCopyWithImpl<$Res>
    extends _$ModelOfSourceCopyWithImpl<$Res>
    implements _$$_ModelOfSourceCopyWith<$Res> {
  __$$_ModelOfSourceCopyWithImpl(
      _$_ModelOfSource _value, $Res Function(_$_ModelOfSource) _then)
      : super(_value, (v) => _then(v as _$_ModelOfSource));

  @override
  _$_ModelOfSource get _value => super._value as _$_ModelOfSource;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ModelOfSource(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfSource implements _ModelOfSource {
  const _$_ModelOfSource({this.id = '', this.name = ''});

  factory _$_ModelOfSource.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfSourceFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'ModelOfSource(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfSource &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOfSourceCopyWith<_$_ModelOfSource> get copyWith =>
      __$$_ModelOfSourceCopyWithImpl<_$_ModelOfSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfSourceToJson(
      this,
    );
  }
}

abstract class _ModelOfSource implements ModelOfSource {
  const factory _ModelOfSource({final String id, final String name}) =
      _$_ModelOfSource;

  factory _ModelOfSource.fromJson(Map<String, dynamic> json) =
      _$_ModelOfSource.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfSourceCopyWith<_$_ModelOfSource> get copyWith =>
      throw _privateConstructorUsedError;
}
