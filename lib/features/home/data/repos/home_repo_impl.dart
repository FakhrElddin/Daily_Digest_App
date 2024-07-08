import 'package:daily_digest/core/errors/failures.dart';
import 'package:daily_digest/core/utils/api_service.dart';
import 'package:daily_digest/features/home/data/models/news/article_model.dart';
import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:daily_digest/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<ArticleModel>>> fetchBreakingNews() async {
    try {
      var data = await apiService.get(
        endPoint:
            'top-headlines?apiKey=125b3eb6cee749ebb0c4534321ded29d&country=us&category=general',
      );

      NewsModel newsModel = NewsModel.fromJson(data);

      return right(newsModel.articles!);
    } catch (e) {
      return left(ServerFailure(errorMessage: 'server error message'));
    }
  }

  @override
  Future<Either<Failure, List<ArticleModel>>> fetchRecommendationNews() {
    // TODO: implement fetchRecommendationNews
    throw UnimplementedError();
  }
}
