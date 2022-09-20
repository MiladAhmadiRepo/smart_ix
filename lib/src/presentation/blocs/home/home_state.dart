part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeReloadState extends HomeState {
  final int indexOfBottomSheet;

  const HomeReloadState(this.indexOfBottomSheet);

  @override
  List<Object> get props => [indexOfBottomSheet];
}

class HomeDoneState extends HomeState {
  const HomeDoneState();
}

class SwitchAcState extends HomeState {
  final bool switchState;
  const SwitchAcState(this.switchState);
  @override
  List<Object> get props => [switchState];
}

class SwitchSmartTvState extends HomeState {
  final bool switchState;
  const SwitchSmartTvState(this.switchState);
  @override
  List<Object> get props => [switchState];
}

class SwitchSmartFanState extends HomeState {
  final bool switchState;
  const SwitchSmartFanState(this.switchState);
  @override
  List<Object> get props => [switchState];
}

class SwitchSmartLightState extends HomeState {
  final bool switchState;
  const SwitchSmartLightState(this.switchState);
  @override
  List<Object> get props => [switchState];
}