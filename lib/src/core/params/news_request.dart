import 'package:smart_ix/src/core/utils/constants.dart';

class NewsRequestParams {
  final String apiKey;
  final String userId;
  final String country;
  final String category;
  final int page;
  final int pageSize;

  NewsRequestParams({
    this.apiKey = kApiKey,
    this.userId = 'milad',
    this.country = 'us',
    this.category = 'general',
    this.page = 1,
    this.pageSize = 20,
  });
}
