import 'package:daily_digest/core/errors/failures.dart';
import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, NewsModel>> fetchBreakingNews();
  Future<Either<Failure, NewsModel>> fetchRecommendationNews();
}
