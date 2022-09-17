part of 'weathers_bloc.dart';

abstract class WeathersEvent extends Equatable {
  const WeathersEvent();

  @override
  List<Object> get props => [];
}

class GetWeathers extends WeathersEvent {
  const GetWeathers();
}
