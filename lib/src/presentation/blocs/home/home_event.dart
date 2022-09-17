part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  // final int index;
  const HomeEvent( );
  @override
  List<Object> get props => [ ];
}

class PageChanged extends HomeEvent {
  final int indexOfPageView;
  const PageChanged(this.indexOfPageView) ;
  @override
  List<Object> get props => [indexOfPageView];
}

class BottomSheetTapped extends HomeEvent {
  final int indexOfBottomSheet;
  const BottomSheetTapped(this.indexOfBottomSheet) ;
  @override
  List<Object> get props => [indexOfBottomSheet];
}
