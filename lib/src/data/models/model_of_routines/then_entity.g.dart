// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'then_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThenEntity _$ThenEntityFromJson(Map<String, dynamic> json) => ThenEntity(
      (json['device'] as List<dynamic>?)
          ?.map((e) => DeviceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ThenEntityToJson(ThenEntity instance) =>
    <String, dynamic>{
      'device': instance.device,
    };
