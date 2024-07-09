import 'package:daily_digest/core/errors/failures.dart';
import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
  Future<Either<Failure, NewsModel>> fetchSearchResult({required String text});
}