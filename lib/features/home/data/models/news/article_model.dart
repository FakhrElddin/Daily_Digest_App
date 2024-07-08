import 'package:daily_digest/features/home/data/models/news/source_model.dart';

class ArticleModel {
  final SourceModel? source;
  final String? author;
  final String? title;
  final String? discription;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const ArticleModel({
    this.source,
    this.author,
    this.title,
    this.discription,
    this.url,
    this.urlToImage,
    this.content,
    this.publishedAt,
  });

  factory ArticleModel.forJson(Map<String, dynamic> json) {
    return ArticleModel(
      source: SourceModel.fromJosn(json['source']),
      author: json['author'],
      title: json['title'],
      discription: json['discription'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      content: json['content'],
    );
  }
}