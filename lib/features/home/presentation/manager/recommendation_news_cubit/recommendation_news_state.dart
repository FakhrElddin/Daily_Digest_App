part of 'recommendation_news_cubit.dart';

sealed class RecommendationNewsState extends Equatable {
  const RecommendationNewsState();

  @override
  List<Object> get props => [];
}

final class RecommendationNewsInitial extends RecommendationNewsState {}

final class RecommendationNewsLoading extends RecommendationNewsState {}

final class RecommendationNewsSuccess extends RecommendationNewsState {
  final NewsModel news;

  const RecommendationNewsSuccess({required this.news});
}

final class RecommendationNewsFailure extends RecommendationNewsState {
  final String errorMessage;

  const RecommendationNewsFailure({required this.errorMessage});
}
