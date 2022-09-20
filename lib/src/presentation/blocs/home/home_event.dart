part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent( );
  @override
  List<Object> get props => [ ];
}

class PageChangedEvent extends HomeEvent {
  final int indexOfPageView;
  const PageChangedEvent(this.indexOfPageView) ;
  @override
  List<Object> get props => [indexOfPageView];
}

class BottomSheetTappedEvent extends HomeEvent {
  final int indexOfBottomSheet;
  const BottomSheetTappedEvent(this.indexOfBottomSheet) ;
  @override
  List<Object> get props => [indexOfBottomSheet];
}

class SwitchAcEvent extends HomeEvent {
  const SwitchAcEvent() ;
}

class SwitchSmartFanEvent extends HomeEvent {
  const SwitchSmartFanEvent() ;
}

class SwitchSmartTvEvent extends HomeEvent {
  const SwitchSmartTvEvent() ;
}

class SwitchSmartLightEvent extends HomeEvent {
  const SwitchSmartLightEvent() ;
}