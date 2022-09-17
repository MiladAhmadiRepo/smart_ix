part of 'home_bloc.dart';

abstract class HomeState   extends Equatable   {
  const HomeState();

  @override
  List<Object> get props => [ ];
}

class HomeReload extends HomeState {
  final int indexOfBottomSheet;
  const HomeReload(this.indexOfBottomSheet);
  @override
  List<Object> get props => [ indexOfBottomSheet];
}

class HomeDone extends HomeState {
  const HomeDone(   ) ;
}

