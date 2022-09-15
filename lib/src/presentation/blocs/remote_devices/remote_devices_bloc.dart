import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_ix/src/domain/entities/devices.dart';

import '../../../core/params/devices_request.dart';
import '../../../core/resources/data_state.dart';
import '../../../domain/usecases/get_devices_usecase.dart';

part 'remote_devices_event.dart';

part 'remote_devices_state.dart';

class RemoteDevicesBloc extends Bloc<RemoteDevicesEvent, RemoteDevicesState> {
  final GetDevicesUseCase _getDevicesUseCase;

  RemoteDevicesBloc(this._getDevicesUseCase) : super(RemoteDevicesLoading()) {
    on<RemoteDevicesEvent>(_getDevicesEventToState);
  }

  late Devices _devices;

  void _getDevicesEventToState(RemoteDevicesEvent event, Emitter<RemoteDevicesState> emit) async {
    final dataState = await _getDevicesUseCase(params: DevicesRequestParams());

    if (dataState is DataSuccess && dataState.data != null) {
      final Devices devices = dataState.data as Devices;
      _devices = devices;
      // emit(RemoteDevicesDone(_devices, noMoreData: noMoreData));
    }
    if (dataState is DataFailed) {
      // emit(RemoteDevicesError(dataState.error));
    }
  }
}
