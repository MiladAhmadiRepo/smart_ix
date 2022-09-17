// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceEntity _$DeviceEntityFromJson(Map<String, dynamic> json) => DeviceEntity(
      json['id'] as String?,
      json['name'] as String?,
      json['activity_state'] as bool?,
      json['properties'] == null
          ? null
          : PropertiesEntity.fromJson(
              json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeviceEntityToJson(DeviceEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'activity_state': instance.activityState,
      'properties': instance.properties,
    };
