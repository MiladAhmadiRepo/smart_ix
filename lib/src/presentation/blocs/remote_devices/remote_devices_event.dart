part of 'remote_devices_bloc.dart';

abstract class RemoteDevicesEvent extends Equatable {
  const RemoteDevicesEvent();

  @override
  List<Object> get props => [];
}

class GetDevices extends RemoteDevicesEvent {
  const GetDevices();
}
