import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_ix/src/data/models/model_of_devices/owner_entity.dart';
import 'package:smart_ix/src/domain/entities/devices/owner.dart';
import '../../core/params/devices_request.dart';
import '../../core/resources/data_state.dart';
import '../../domain/entities/devices/devices.dart';
import '../../domain/repositories/devices_repository.dart';
import '../datasources/remote/devices_api_service.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../models/model_of_devices/devices_entity.dart';


class DevicesRepositoryImpl implements DevicesRepository {
  final DeviceApiService _deviceApiService;

  const DevicesRepositoryImpl(this._deviceApiService);

  @override
  Future<DataState<Owner>> getDevicesWebService(
    DevicesRequestParams params,
  ) async {
    try {
      // final response = await _deviceApiService.getDevice(
      //   apiKey: params.apiKey,
      //   user_id: params.userId,
      // );


      //simulation a webservice call
      String  jsonStr = await rootBundle.loadString('assets/simulate_web_services/devices.json');
      final response= jsonDecode(jsonStr);

    // if (response.statusCode == HttpStatus.ok) {
    if (response!= null) {
        // Devices devices = Devices(
        //     userId: (response['owner']?['userId']) ?? "default",
        //     services: (response['owner']?['services']) ?? [],
        //     devices: (response['owner']?['devices']) ?? [],
        //);
      OwnerEntity _OwnerEntity=OwnerEntity.fromJson(response['owner']);
        return DataSuccess(_OwnerEntity.mapToDomain());
      }
      return DataFailed(
        DioError(
            error: response.statusMessage,
            response: response,
            type: DioErrorType.response,
            requestOptions: response.requestOptions),
      );
    } on DioError
    catch (e)
    {
      return DataFailed(e);
    }
  }
}
