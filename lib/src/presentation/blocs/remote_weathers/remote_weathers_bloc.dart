import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_ix/src/domain/entities/weathers.dart';

import '../../../core/params/news_request.dart';
import '../../../core/params/weather_request.dart';
import '../../../core/resources/data_state.dart';
import '../../../domain/usecases/get_weathers_usecase.dart';

part 'remote_weathers_event.dart';
part 'remote_weathers_state.dart';

class RemoteWeathersBloc extends Bloc<RemoteWeathersEvent, RemoteWeathersState> {
  final GetWeathersUseCase _getWeathersUseCase;

  RemoteWeathersBloc(this._getWeathersUseCase) : super(RemoteWeathersLoading()) {
    on<RemoteWeathersEvent>(_getWeathersEventToState);
  }

  late Weathers _weathers;

  void _getWeathersEventToState(
      RemoteWeathersEvent event, Emitter<RemoteWeathersState> emit) async {
    final dataState = await _getWeathersUseCase(params: WeatherRequestParams( ));

    if (dataState is DataSuccess && dataState.data != null) {
      final Weathers weathers = dataState.data as Weathers;
      _weathers = weathers;
      // emit(RemoteWeathersDone(_weathers, noMoreData: noMoreData));
    }
    if (dataState is DataFailed) {
      // emit(RemoteWeathersError(dataState.error));
    }
  }
}
