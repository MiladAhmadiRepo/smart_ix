// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'when_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WhenEntity _$WhenEntityFromJson(Map<String, dynamic> json) => WhenEntity(
      json['device'] == null
          ? null
          : DeviceEntity.fromJson(json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WhenEntityToJson(WhenEntity instance) =>
    <String, dynamic>{
      'device': instance.device,
    };
