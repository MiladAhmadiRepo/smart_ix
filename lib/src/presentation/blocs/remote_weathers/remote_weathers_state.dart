part of 'remote_weathers_bloc.dart';

abstract class RemoteWeathersState extends Equatable {
  final Weathers? weathers;

  final DioError? error;
  const RemoteWeathersState({ this.weathers,   this.error });

  @override
  List<Object> get props => [weathers??Object(), error??Object()];
}

class RemoteWeathersLoading extends RemoteWeathersState {
  const RemoteWeathersLoading();
}

class RemoteWeathersDone extends RemoteWeathersState {
  const RemoteWeathersDone(Weathers weathers) : super(weathers: weathers);
}

class RemoteWeathersError extends RemoteWeathersState {
  const RemoteWeathersError(DioError? error) : super(error: error);
}
