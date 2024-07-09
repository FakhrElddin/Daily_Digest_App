import 'package:bloc/bloc.dart';
import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:equatable/equatable.dart';

part 'category_articles_state.dart';

class CategoryArticlesCubit extends Cubit<CategoryArticlesState> {
  CategoryArticlesCubit() : super(CategoryArticlesInitial());
}
