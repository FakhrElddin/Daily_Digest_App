import 'package:bloc/bloc.dart';
import 'package:daily_digest/features/categories/data/repos/category_repo.dart';
import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:equatable/equatable.dart';

part 'category_articles_state.dart';

class CategoryArticlesCubit extends Cubit<CategoryArticlesState> {
  CategoryArticlesCubit(this.categoryRepo) : super(CategoryArticlesInitial());

  final CategoryRepo categoryRepo;

  Future<void> fetchCategoryArticles({required String category}) async {
    emit(CategoryArticlesLoading());
    var result = await categoryRepo.fetchCategoryArticles(
      category: category,
    );
    result.fold(
      (failure) {
        emit(
          CategoryArticlesFailure(errorMessage: failure.errorMessage),
        );
      },
      (news) {
        emit(
          CategoryArticlesSuccess(news: news),
        );
      },
    );
  }
}
