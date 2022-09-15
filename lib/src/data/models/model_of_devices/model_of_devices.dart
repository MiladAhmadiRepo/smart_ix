import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_ix/src/domain/entities/devices.dart';
part 'model_of_devices.freezed.dart';
part 'model_of_devices.g.dart';
//------------------------------------------------------------------------------------

@freezed
class ModelOfDevices with _$ModelOfDevices implements Devices{
  const factory ModelOfDevices({
    required String userId,
    required List<ModelOfDevice> devices,
    required List<dynamic> services,
  }) = _ModelOfDevices;

  factory ModelOfDevices.fromJson(Map<String, dynamic> json) => _$ModelOfDevicesFromJson(json);
}

//------------------------------------------------------------------------------------
@freezed
class ModelOfDevice with _$ModelOfDevice implements Device{
  const factory ModelOfDevice({
    required String id,
    required String name,
    @Default('') String manufactureName,
    @Default('') String deviceVersion,
    @Default(false) bool activityState,
    @Default([]) List<ModelOfProperty> properties,
  }) = _ModelOfDevice;

  factory ModelOfDevice.fromJson(Map<String, dynamic> json) => _$ModelOfDeviceFromJson(json);
}

//------------------------------------------------------------------------------------
@freezed
class ModelOfProperty with _$ModelOfProperty implements Property{
  const factory ModelOfProperty({
    required String id,
    required String name,
    @Default('') String typeOfValue,
    @Default('') String currentValue,
    @Default([]) List<String> rang,
    @Default('') String minValue,
    @Default('') String maxValue,
  }) = _ModelOfProperty;

  factory ModelOfProperty.fromJson(Map<String, dynamic> json) => _$ModelOfPropertyFromJson(json);
}

//------------------------------------------------------------------------------------
