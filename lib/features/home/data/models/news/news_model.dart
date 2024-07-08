import 'package:daily_digest/features/home/data/models/news/articles_model.dart';

class NewsModel {
  final String? status;
  final int? totalResults;
  final List<ArticlesModel>? articles;

  const NewsModel({
    this.status,
    this.totalResults,
    this.articles,
  });
  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      status: json['status'],
      totalResults: json['totalResults'],
      articles: (json['articles'] as List<dynamic>).map((e) => ArticlesModel.forJson(e)).toList(),
    );
  }
}




