part of 'remote_devices_bloc.dart';

abstract class RemoteDevicesState extends Equatable {
  final Devices? devices;

  final DioError? error;
  const RemoteDevicesState({ this.devices,   this.error });

  @override
  List<Object> get props => [devices??Object(), error??Object()];
}

class RemoteDevicesLoading extends RemoteDevicesState {
  const RemoteDevicesLoading();
}

class RemoteDevicesDone extends RemoteDevicesState {
  const RemoteDevicesDone(Devices devices) : super(devices: devices);
}

class RemoteDevicesError extends RemoteDevicesState {
  const RemoteDevicesError(DioError? error) : super(error: error);
}
