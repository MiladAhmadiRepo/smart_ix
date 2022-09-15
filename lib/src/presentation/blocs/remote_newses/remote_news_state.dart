part of 'remote_news_bloc.dart';

abstract class RemoteNewsesState extends Equatable {
  final Newses? newses;
  final bool noMoreData;

  final DioError? error;
  const RemoteNewsesState({ this.newses,  this.noMoreData=false,  this.error });

  @override
  List<Object> get props => [newses??Object(), noMoreData, error??Object()];
}

class RemoteNewsesLoading extends RemoteNewsesState {
  const RemoteNewsesLoading();
}

class RemoteNewsesDone extends RemoteNewsesState {
  const RemoteNewsesDone(Newses newses, {bool noMoreData=false}) : super(newses: newses, noMoreData: noMoreData);
}

class RemoteNewsesError extends RemoteNewsesState {
  const RemoteNewsesError(DioError? error) : super(error: error);
}
