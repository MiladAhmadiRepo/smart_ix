import 'package:smart_ix/src/core/resources/data_state.dart';
import 'package:smart_ix/src/core/usecases/usecase.dart';
import 'package:smart_ix/src/domain/entities/devices/owner.dart';

import '../../core/params/devices_request.dart';
import '../entities/devices/devices.dart';
import '../repositories/devices_repository.dart';

class GetDevicesUseCase implements UseCase<DataState<Owner>, DevicesRequestParams> {
  final DevicesRepository _devicesRepository;

  GetDevicesUseCase(this._devicesRepository);

  @override
  Future<DataState<Owner>> call({required DevicesRequestParams params}) {
    return _devicesRepository.getDevicesWebService(params);
  }
}
