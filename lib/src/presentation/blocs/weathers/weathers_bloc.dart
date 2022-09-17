import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_ix/src/domain/entities/weathers/weathers.dart';

import '../../../core/params/news_request.dart';
import '../../../core/params/weather_request.dart';
import '../../../core/resources/data_state.dart';
import '../../../domain/usecases/get_weathers_usecase.dart';

part 'weathers_event.dart';
part 'weathers_state.dart';

class WeathersBloc extends Bloc<WeathersEvent, WeathersState> {
  final GetWeathersUseCase _getWeathersUseCase;

  WeathersBloc(this._getWeathersUseCase) : super(WeathersLoading()) {
    on<WeathersEvent>(_getWeathersEventToState);
  }

  late Weathers _weathers;

  void _getWeathersEventToState(
      WeathersEvent event, Emitter<WeathersState> emit) async {
    final dataState = await _getWeathersUseCase(params: WeatherRequestParams( ));

    if (dataState is DataSuccess && dataState.data != null) {
      final Weathers weathers = dataState.data as Weathers;
      _weathers = weathers;
      // emit(WeathersDone(_weathers, noMoreData: noMoreData));
    }
    if (dataState is DataFailed) {
      // emit(WeathersError(dataState.error));
    }
  }
}
