import 'package:daily_digest/core/errors/failures.dart';
import 'package:daily_digest/core/utils/api_service.dart';
import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:daily_digest/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, NewsModel>> fetchSearchResult(
      {required String text}) async {
    try {
      var data = await apiService.get(
        endPoint: 'everything?apiKey=125b3eb6cee749ebb0c4534321ded29d&q=$text',
      );
      NewsModel newsModel = NewsModel.fromJson(data);
      newsModel.articles!.removeWhere(
        (article) => article.title!.contains('[Removed]'),
      );
      return right(newsModel);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      } else {
        return left(
          ServerFailure(
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }
}