
import '../../core/params/devices_request.dart';
import '../../core/resources/data_state.dart';
import '../entities/devices.dart';

abstract class DevicesRepository {
  Future<DataState<Devices>> getDevicesWebService(DevicesRequestParams params);
}
