import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:smart_ix/src/domain/entities/devices/devices.dart';
import 'package:smart_ix/src/domain/entities/devices/owner.dart';

import '../../../core/params/devices_request.dart';
import '../../../core/resources/data_state.dart';
import '../../../domain/usecases/get_devices_usecase.dart';

part 'devices_event.dart';

part 'devices_state.dart';

class DevicesBloc extends Bloc<DevicesEvent, DevicesState> {
  final GetDevicesUseCase _getDevicesUseCase;
  List<Devices> devicesInstance=[];
  bool light_activity_state=false;
  String light_company_name='';
  bool ar_activity_state=false;
  String ar_company_name='';
  bool smarttv_activity_state=false;
  String smartv_company_name='';
  bool fan_activity_state=false;
  String fan_company_name='';

  DevicesBloc(this._getDevicesUseCase) : super(DevicesLoading()) {
    on<GetDevices>(_getDevicesEventToState);
    on<LightSwitch>(_lightSwitchEventToState);
    on<ArSwitch>(_arSwitchEventToState);
    on<FanSwitch>(_fanSwitchEventToState);
    on<SmartTvSwitch>(_smarttvSwitchEventToState);
  }

  PageController pageController = PageController(
    initialPage: 0,
  );
  void _getDevicesEventToState(GetDevices event, Emitter<DevicesState> emit) async {
    final dataState = await _getDevicesUseCase(params: DevicesRequestParams());

    if (dataState is DataSuccess && dataState.data != null) {
      final Owner owner = dataState.data as Owner;
      devicesInstance = owner.devices!;
      ar_activity_state=devicesInstance[0].activityState!;
      ar_company_name=devicesInstance[0].manufactureName!;
      light_activity_state=devicesInstance[1].activityState!;
      light_company_name=devicesInstance[1].manufactureName!;
      fan_activity_state=devicesInstance[2].activityState!;
      fan_company_name=devicesInstance[2].manufactureName!;
      smarttv_activity_state=devicesInstance[3].activityState!;
      smartv_company_name=devicesInstance[3].manufactureName!;

      emit(DevicesDone(devicesInstance));
    }
    if (dataState is DataFailed) {
      emit(DevicesError(dataState.error));
    }
  }
  void _lightSwitchEventToState(LightSwitch event, Emitter<DevicesState> emit) async {
    light_activity_state=!light_activity_state;
    emit(DevicesDone(devicesInstance));
  }
  void _arSwitchEventToState(ArSwitch event, Emitter<DevicesState> emit) async {
    ar_activity_state=!ar_activity_state;
    emit(DevicesDone(devicesInstance));
  }
  void _fanSwitchEventToState(FanSwitch event, Emitter<DevicesState> emit) async {
    fan_activity_state=!fan_activity_state;
    emit(DevicesDone(devicesInstance));
  }
  void _smarttvSwitchEventToState(SmartTvSwitch event, Emitter<DevicesState> emit) async {
    smarttv_activity_state=!smarttv_activity_state;
    emit(DevicesDone(devicesInstance));
  }
}
