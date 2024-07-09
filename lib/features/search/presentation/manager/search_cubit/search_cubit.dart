import 'package:bloc/bloc.dart';
import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:daily_digest/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchResult({required String text}) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchResult(
      text: text,
    );
    result.fold(
      (failure) {
        emit(
          SearchFailure(
            errorMessage: failure.errorMessage,
          ),
        );
      },
      (news) {
        emit(
          SearchSuccess(
            news: news,
          ),
        );
      },
    );
  }
}
