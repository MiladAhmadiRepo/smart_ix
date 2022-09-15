import 'dart:io';
import 'package:dio/dio.dart';
import '../../core/params/devices_request.dart';
import '../../core/resources/data_state.dart';
import '../../domain/entities/devices.dart';
import '../../domain/repositories/devices_repository.dart';
import '../datasources/remote/devices_api_service.dart';

class DevicesRepositoryImpl implements DevicesRepository {
  final DeviceApiService _deviceApiService;

  const DevicesRepositoryImpl(this._deviceApiService);

  @override
  Future<DataState<Devices>> getDevicesWebService(
    DevicesRequestParams params,
  ) async {
    try {
      final response = await _deviceApiService.getDevice(
        apiKey: params.apiKey,
        user_id: params.userId,
      );

      if (response.statusCode == HttpStatus.ok) {
        Devices devices = Devices(
            userId: (response.data?.userId) ?? "default",
            devices: (response.data?.devices) ?? [],
            services: (response.data?.services) ?? []);
        return DataSuccess(devices);
      }
      return DataFailed(
        DioError(
            error: response.statusMessage,
            response: response,
            type: DioErrorType.response,
            requestOptions: response.requestOptions),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
