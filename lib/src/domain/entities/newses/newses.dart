//------------------------------------------------------------------------------------

class Newses {
  final String userId;
  final List<dynamic> devices;

  final List<Service> services;

  const Newses({
    required this.userId,
    required this.devices,
    required this.services,
  });
}
//------------------------------------------------------------------------------------

class Service {
  final String id;
  final String name;
  final String companyName;

  final String apiVersion;

  final bool activityState;

  final News news;

  const Service({
    required this.id,
    required this.name,
    this.companyName = '',
    this.apiVersion = '',
    this.activityState = false,
    required this.news,
  });
}
//------------------------------------------------------------------------------------

class News {
  final String status;
  final int totalResults;
  final List<Article> articles;

  const News({
    required this.status,
    required this.totalResults,
    this.articles = const [],
  });
}
//------------------------------------------------------------------------------------

class Article {
  const Article({
    required Source source,
    String author = '',
    String title = '',
    String description = '',
    String url = '',
    String urlToImage = '',
    String publishedAt = '',
    String content = '',
  });
}
//------------------------------------------------------------------------------------

class Source {
  const Source({
    String id = '',
    String name = '',
  });
}
//------------------------------------------------------------------------------------
