part of 'devices_bloc.dart';

abstract class DevicesState extends Equatable {
  final List<Devices>? devices;

  final DioError? error;
  const DevicesState({ this.devices,   this.error });

  @override
  List<Object> get props => [devices??Object(), error??Object()];
}

class DevicesLoading extends DevicesState {
  const DevicesLoading();
}

class DevicesDone extends DevicesState {
  const DevicesDone(List<Devices> devices) : super(devices: devices);
}

class DevicesError extends DevicesState {
  const DevicesError(DioError? error) : super(error: error);
}
