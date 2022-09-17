part of 'news_bloc.dart';

abstract class NewsesState extends Equatable {
  final Newses? newses;
  final bool noMoreData;

  final DioError? error;
  const NewsesState({ this.newses,  this.noMoreData=false,  this.error });

  @override
  List<Object> get props => [newses??Object(), noMoreData, error??Object()];
}

class NewsesLoading extends NewsesState {
  const NewsesLoading();
}

class NewsesDone extends NewsesState {
  const NewsesDone(Newses newses, {bool noMoreData=false}) : super(newses: newses, noMoreData: noMoreData);
}

class NewsesError extends NewsesState {
  const NewsesError(DioError? error) : super(error: error);
}
