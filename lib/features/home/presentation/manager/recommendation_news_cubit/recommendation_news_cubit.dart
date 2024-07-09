import 'package:bloc/bloc.dart';
import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:daily_digest/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'recommendation_news_state.dart';

class RecommendationNewsCubit extends Cubit<RecommendationNewsState> {
  RecommendationNewsCubit(this.homeRepo) : super(RecommendationNewsInitial());

  final HomeRepo homeRepo;

  Future<void> fetchRecommendationNews() async {
    emit(RecommendationNewsLoading());
    var result = await homeRepo.fetchRecommendationNews();
    result.fold(
      (failure) {
        emit(
          RecommendationNewsFailure(errorMessage: failure.errorMessage),
        );
      },
      (news) {
        emit(
          RecommendationNewsSuccess(news: news),
        );
      },
    );
  }
}
