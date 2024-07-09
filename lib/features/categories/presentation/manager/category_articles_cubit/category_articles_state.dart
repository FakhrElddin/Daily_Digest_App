part of 'category_articles_cubit.dart';

sealed class CategoryArticlesState extends Equatable {
  const CategoryArticlesState();

  @override
  List<Object> get props => [];
}

final class CategoryArticlesInitial extends CategoryArticlesState {}

final class CategoryArticlesLoading extends CategoryArticlesState {}

final class CategoryArticlesSuccess extends CategoryArticlesState {
  final NewsModel news;

  const CategoryArticlesSuccess({required this.news});
}

final class CategoryArticlesFailure extends CategoryArticlesState {
  final String errorMessage;

  const CategoryArticlesFailure({required this.errorMessage});
}
