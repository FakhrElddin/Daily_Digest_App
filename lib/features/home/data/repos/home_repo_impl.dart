
import 'package:daily_digest/core/errors/failures.dart';
import 'package:daily_digest/features/home/data/models/news/articles_model.dart';
import 'package:daily_digest/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<ArticlesModel>>> fetchBreakingNews() {
    // TODO: implement fetchBreakingNews
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ArticlesModel>>> fetchRecommendationNews() {
    // TODO: implement fetchRecommendationNews
    throw UnimplementedError();
  }

}