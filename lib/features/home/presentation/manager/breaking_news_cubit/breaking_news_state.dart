part of 'breaking_news_cubit.dart';

sealed class BreakingNewsState extends Equatable {
  const BreakingNewsState();

  @override
  List<Object> get props => [];
}

final class BreakingNewsInitial extends BreakingNewsState {}

final class BreakingNewsLoading extends BreakingNewsState {}

final class BreakingNewsScuccess extends BreakingNewsState {
  final NewsModel newsModel;

  const BreakingNewsScuccess({required this.newsModel});
}

final class BreakingNewsFailure extends BreakingNewsState {
  final String errorMessage;

  const BreakingNewsFailure({required this.errorMessage});
}
