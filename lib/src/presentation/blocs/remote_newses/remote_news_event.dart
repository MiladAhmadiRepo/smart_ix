part of 'remote_news_bloc.dart';

abstract class RemoteNewsesEvent extends Equatable {
  const RemoteNewsesEvent();

  @override
  List<Object> get props => [];
}

class GetNewses extends RemoteNewsesEvent {
  const GetNewses();
}
