// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DevicesEntity _$DevicesEntityFromJson(Map<String, dynamic> json) =>
    DevicesEntity(
      json['id'] as String?,
      json['name'] as String?,
      json['manufacture_name'] as String?,
      json['device_version'] as String?,
      json['activity_state'] as bool?,
      (json['properties'] as List<dynamic>?)
          ?.map((e) => PropertiesEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DevicesEntityToJson(DevicesEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'manufacture_name': instance.manufactureName,
      'device_version': instance.deviceVersion,
      'activity_state': instance.activityState,
      'properties': instance.properties,
    };
