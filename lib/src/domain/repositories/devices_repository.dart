
import '../../core/params/devices_request.dart';
import '../../core/resources/data_state.dart';
import '../entities/devices/devices.dart';
import '../entities/devices/owner.dart';

abstract class DevicesRepository {
  Future<DataState<Owner>> getDevicesWebService(DevicesRequestParams params);
}
