import 'package:daily_digest/features/home/data/models/news/source_model.dart';

class ArticlesModel {
  final SourceModel? source;
  final String? author;
  final String? title;
  final String? discription;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const ArticlesModel({
    this.source,
    this.author,
    this.title,
    this.discription,
    this.url,
    this.urlToImage,
    this.content,
    this.publishedAt,
  });

  factory ArticlesModel.forJson(Map<String, dynamic> json) {
    return ArticlesModel(
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