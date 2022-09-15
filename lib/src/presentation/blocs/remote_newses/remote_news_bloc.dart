import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_ix/src/domain/entities/newses.dart';

import '../../../core/params/news_request.dart';
import '../../../core/resources/data_state.dart';
import '../../../domain/usecases/get_newses_usecase.dart';

part 'remote_news_event.dart';
part 'remote_news_state.dart';

class RemoteNewsesBloc extends Bloc<RemoteNewsesEvent, RemoteNewsesState> {
  final GetNewsesUseCase _getNewsesUseCase;

  RemoteNewsesBloc(this._getNewsesUseCase) : super(RemoteNewsesLoading()) {
    on<RemoteNewsesEvent>(_getBreakingNewsEventToState);
  }

  late Newses _newses;
  int _page = 1;
  static const int _pageSize = 20;

  void _getBreakingNewsEventToState(
      RemoteNewsesEvent event, Emitter<RemoteNewsesState> emit) async {
    final dataState = await _getNewsesUseCase(params: NewsRequestParams(page: _page));

    if (dataState is DataSuccess && dataState.data != null) {
      final Newses newses = dataState.data as Newses;
      final noMoreData = newses.services[0].news.articles.length < _pageSize;
      _newses = newses;
      _page++;
      emit(RemoteNewsesDone(_newses, noMoreData: noMoreData));
    }
    if (dataState is DataFailed) {
      emit(RemoteNewsesError(dataState.error));
    }
  }
}
