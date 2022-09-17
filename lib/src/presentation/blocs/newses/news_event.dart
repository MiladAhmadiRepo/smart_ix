part of 'news_bloc.dart';

abstract class NewsesEvent extends Equatable {
  const NewsesEvent();

  @override
  List<Object> get props => [];
}

class GetNewses extends NewsesEvent {
  const GetNewses();
}
