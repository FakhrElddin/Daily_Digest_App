import 'package:daily_digest/core/errors/failures.dart';
import 'package:daily_digest/features/home/data/models/news/articles_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ArticlesModel>>> fetchBreakingNews();
  Future<Either<Failure, List<ArticlesModel>>> fetchRecommendationNews();
}
