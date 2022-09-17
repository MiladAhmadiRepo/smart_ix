import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_ix/src/domain/entities/newses/newses.dart';

import '../../../core/params/news_request.dart';
import '../../../core/resources/data_state.dart';
import '../../../domain/usecases/get_newses_usecase.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsesBloc extends Bloc<NewsesEvent, NewsesState> {
  final GetNewsesUseCase _getNewsesUseCase;

  NewsesBloc(this._getNewsesUseCase) : super(NewsesLoading()) {
    on<NewsesEvent>(_getBreakingNewsEventToState);
  }

  late Newses _newses;
  int _page = 1;
  static const int _pageSize = 20;

  void _getBreakingNewsEventToState(
      NewsesEvent event, Emitter<NewsesState> emit) async {
    final dataState = await _getNewsesUseCase(params: NewsRequestParams(page: _page));

    if (dataState is DataSuccess && dataState.data != null) {
      final Newses newses = dataState.data as Newses;
      final noMoreData = newses.services[0].news.articles.length < _pageSize;
      _newses = newses;
      _page++;
      emit(NewsesDone(_newses, noMoreData: noMoreData));
    }
    if (dataState is DataFailed) {
      emit(NewsesError(dataState.error));
    }
  }
}
