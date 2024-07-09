import 'package:bloc/bloc.dart';
import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
}
