// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'then_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThenEntity _$ThenEntityFromJson(Map<String, dynamic> json) => ThenEntity(
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

Map<String, dynamic> _$ThenEntityToJson(ThenEntity instance) =>
    <String, dynamic>{
      'devices': instance.devices,
      'properties': instance.properties,
      'value': instance.value,
      'option': instance.option,
      'toggle': instance.toggle,
    };
