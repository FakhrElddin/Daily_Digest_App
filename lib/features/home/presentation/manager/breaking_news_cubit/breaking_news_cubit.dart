import 'package:bloc/bloc.dart';
import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:daily_digest/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'breaking_news_state.dart';

class BreakingNewsCubit extends Cubit<BreakingNewsState> {
  BreakingNewsCubit(this.homeRepo) : super(BreakingNewsInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBreakingNews() async {
    emit(BreakingNewsLoading());
    var result = await homeRepo.fetchBreakingNews();
    result.fold(
      (failure) {
        emit(BreakingNewsFailure(errorMessage: failure.errorMessage));
      },
      (news) {
        emit(BreakingNewsScuccess(news: news));
      },
    );
  }
}
