import 'package:daily_digest/core/errors/failures.dart';
import 'package:daily_digest/features/home/data/models/news/article_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ArticleModel>>> fetchBreakingNews();
  Future<Either<Failure, List<ArticleModel>>> fetchRecommendationNews();
}
