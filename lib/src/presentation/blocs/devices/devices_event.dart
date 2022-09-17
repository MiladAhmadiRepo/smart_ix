part of 'devices_bloc.dart';

abstract class DevicesEvent extends Equatable {
  const DevicesEvent();

  @override
  List<Object> get props => [];
}

class GetDevices extends DevicesEvent {
  const GetDevices();
}
class LightSwitch extends DevicesEvent {
  const LightSwitch();
}
class ArSwitch extends DevicesEvent {
  const ArSwitch();
}
class SmartTvSwitch extends DevicesEvent {
  const SmartTvSwitch();
}
class FanSwitch extends DevicesEvent {
  const FanSwitch();
}