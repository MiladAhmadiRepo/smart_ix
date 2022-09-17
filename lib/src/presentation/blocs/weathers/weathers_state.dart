part of 'weathers_bloc.dart';

abstract class WeathersState extends Equatable {
  final Weathers? weathers;

  final DioError? error;
  const WeathersState({ this.weathers,   this.error });

  @override
  List<Object> get props => [weathers??Object(), error??Object()];
}

class WeathersLoading extends WeathersState {
  const WeathersLoading();
}

class WeathersDone extends WeathersState {
  const WeathersDone(Weathers weathers) : super(weathers: weathers);
}

class WeathersError extends WeathersState {
  const WeathersError(DioError? error) : super(error: error);
}
