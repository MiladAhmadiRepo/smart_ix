// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_of_devices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelOfDevices _$$_ModelOfDevicesFromJson(Map<String, dynamic> json) =>
    _$_ModelOfDevices(
      userId: json['userId'] as String,
      devices: (json['devices'] as List<dynamic>)
          .map((e) => ModelOfDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
      services: json['services'] as List<dynamic>,
    );

Map<String, dynamic> _$$_ModelOfDevicesToJson(_$_ModelOfDevices instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'devices': instance.devices,
      'services': instance.services,
    };

_$_ModelOfDevice _$$_ModelOfDeviceFromJson(Map<String, dynamic> json) =>
    _$_ModelOfDevice(
      id: json['id'] as String,
      name: json['name'] as String,
      manufactureName: json['manufactureName'] as String? ?? '',
      deviceVersion: json['deviceVersion'] as String? ?? '',
      activityState: json['activityState'] as bool? ?? false,
      properties: (json['properties'] as List<dynamic>?)
              ?.map((e) => ModelOfProperty.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ModelOfDeviceToJson(_$_ModelOfDevice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'manufactureName': instance.manufactureName,
      'deviceVersion': instance.deviceVersion,
      'activityState': instance.activityState,
      'properties': instance.properties,
    };

_$_ModelOfProperty _$$_ModelOfPropertyFromJson(Map<String, dynamic> json) =>
    _$_ModelOfProperty(
      id: json['id'] as String,
      name: json['name'] as String,
      typeOfValue: json['typeOfValue'] as String? ?? '',
      currentValue: json['currentValue'] as String? ?? '',
      rang:
          (json['rang'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      minValue: json['minValue'] as String? ?? '',
      maxValue: json['maxValue'] as String? ?? '',
    );

Map<String, dynamic> _$$_ModelOfPropertyToJson(_$_ModelOfProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'typeOfValue': instance.typeOfValue,
      'currentValue': instance.currentValue,
      'rang': instance.rang,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
    };
