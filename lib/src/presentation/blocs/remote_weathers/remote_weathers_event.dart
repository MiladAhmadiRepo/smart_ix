part of 'remote_weathers_bloc.dart';

abstract class RemoteWeathersEvent extends Equatable {
  const RemoteWeathersEvent();

  @override
  List<Object> get props => [];
}

class GetWeathers extends RemoteWeathersEvent {
  const GetWeathers();
}
