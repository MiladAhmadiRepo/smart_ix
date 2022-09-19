// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'when_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WhenEntity _$WhenEntityFromJson(Map<String, dynamic> json) => WhenEntity(
      json['devices'] == null
          ? null
          : DevicesEntity.fromJson(json['devices'] as Map<String, dynamic>),
      json['properties'] == null
          ? null
          : PropertiesEntity.fromJson(
              json['properties'] as Map<String, dynamic>),
      json['value'] as String?,
      json['option'] as String?,
      json['toggle'] as int?,
    );

Map<String, dynamic> _$WhenEntityToJson(WhenEntity instance) =>
    <String, dynamic>{
      'devices': instance.devices,
      'properties': instance.properties,
      'value': instance.value,
      'option': instance.option,
      'toggle': instance.toggle,
    };
